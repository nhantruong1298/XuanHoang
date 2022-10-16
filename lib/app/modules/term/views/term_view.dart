import 'package:example_nav2/app/data/models/enum/account_type.dart';
import 'package:example_nav2/app/data/models/response/project_statistic_report_response.dart';
import 'package:example_nav2/app/data/models/working_term.dart';
import 'package:example_nav2/app/data/services/auth_service.dart';
import 'package:example_nav2/app/modules/term/controllers/term_controller.dart';
import 'package:example_nav2/app/modules/job/views/job_argument.dart';
import 'package:example_nav2/app/modules/home/views/home_view.dart';
import 'package:example_nav2/app/modules/job/views/job_view.dart';
import 'package:example_nav2/app/modules/phase/choose_phase/views/choose_phase_view.dart';
import 'package:example_nav2/generated/assets.gen.dart';
import 'package:example_nav2/generated/l10n.dart';
import 'package:example_nav2/resources/app_colors.dart';
import 'package:example_nav2/resources/app_constants.dart';
import 'package:example_nav2/resources/app_dimensions.dart';
import 'package:example_nav2/widgets/common/app_list_tile.dart';
import 'package:example_nav2/widgets/input/search_input_field.dart';
import 'package:example_nav2/widgets/layouts/blur_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class TermView extends GetView<TermController> {
  static const String path = '/choose-term';
  static const String routeName =
      '${HomeView.path}${ChoosePhaseView.path}$path';
  const TermView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlurLayout(
      extendBodyBehindAppBar: true,
      title: S.current.CHOOSE_CATEGORY__CHOOSE_CATEGORY_TEXT,
      actions: [
        IconButton(
            onPressed: () {
              Get.offNamedUntil(HomeView.routeName, (route) => false);
            },
            icon:
                Assets.images.homeIcon.svg(height: 30, fit: BoxFit.scaleDown)),
        SizedBox(
          width: 10,
        )
      ],
      child: Column(
        children: [
          SizedBox(height: 30.h),
          SearchInputField(onChanged: controller.onSearchChanged),
          SizedBox(height: 20.h),
          Expanded(
              child: RefreshIndicator(
            onRefresh: controller.onRefreshData,
            child: Obx(() {
              final listWorkingTerm = controller.listWorkingTerm.toList();
              final listTermStatistic = controller.listTermStatistic.toList();

              final isStaff = accountType == AccountType.staff ||
                  accountType == AccountType.admin;

              return ListView.separated(
                  keyboardDismissBehavior:
                      ScrollViewKeyboardDismissBehavior.onDrag,
                  itemBuilder: (_, index) {
                    return (isStaff)
                        ? _buildStaffTerm(listWorkingTerm[index])
                        : _buildCustomerTerm(listTermStatistic[index]);
                  },
                  separatorBuilder: (_, index) => const SizedBox(height: 10),
                  itemCount: (isStaff)
                      ? listWorkingTerm.length
                      : listTermStatistic.length);
            }),
          ))
        ],
      ),
    );
  }

  String? get accountType => AuthService.to.accountType;

  Widget _buildStaffTerm(WorkingTerm item) {
    return _StaffTerm(
      onTap: () async {
        final isUpdated = await Get.toNamed(JobView.routeName,
            arguments: JobArgument(
                idWorkingTerm: item.idWorkingTerm ?? '',
                instructionFile: item.instructionFile));

        if (isUpdated == true) {
          controller.onRefreshData();
        }
      },
      termName: item.termName,
      onInfoPressed: () {
        controller.onInfoPressed(item.instructionFile);
      },
      instructionFile: item.instructionFile,
    );
  }

  Widget _buildCustomerTerm(TermStatistic item) {
    return _CustomerTerm(
      termName: item.termName,
      percentComplete: item.percentComplete,
      percentGood: item.percentGood,
      percentNotGood: item.percentNotGood,
      onTap: () async {
        final isUpdated = await Get.toNamed(JobView.routeName,
            arguments: JobArgument(
              idWorkingTerm: item.idWorkingTerm ?? '',
            ));

        if (isUpdated == true) {
          controller.onRefreshData();
        }
      },
    );
  }
}

class _StaffTerm extends StatelessWidget {
  final String? termName;
  final String? instructionFile;
  final VoidCallback? onTap;
  final VoidCallback? onInfoPressed;
  const _StaffTerm({
    Key? key,
    this.termName,
    this.onTap,
    this.onInfoPressed,
    this.instructionFile,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppListTile(
      borderRadius: BorderRadius.circular(AppDimensions.defaultPadding),
      contentPadding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
      onTap: onTap,
      title: Container(
        height: 50,
        alignment: Alignment.centerLeft,
        child: Text(termName ?? '',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 17.sp)),
      ),
      trailing: (instructionFile?.isNotEmpty == true)
          ? IconButton(
              onPressed: onInfoPressed,
              icon: Assets.images.infoIcon.svg(
                  color: Color(0xFF0081C9), height: 27, fit: BoxFit.scaleDown))
          : const SizedBox.shrink(),
    );
  }
}

class _CustomerTerm extends StatelessWidget {
  final VoidCallback? onTap;
  final String? termName;
  final String? percentComplete;
  final String? percentGood;
  final String? percentNotGood;
  const _CustomerTerm({
    Key? key,
    this.onTap,
    this.percentComplete,
    this.percentGood,
    this.percentNotGood,
    this.termName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [AppConstants.defaultBoxShadow],
        borderRadius: BorderRadius.circular(AppDimensions.defaultRadius),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(AppDimensions.defaultRadius),
        child: Material(
          color: AppColors.primaryLightColor,
          child: InkWell(
            onTap: onTap,
            child: Container(
              padding: EdgeInsets.only(top: 9, right: 9, bottom: 9, left: 16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(children: [
                Expanded(
                  child: Text('$termName',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 17.sp,
                      )),
                ),
                const SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      width: 75.w,
                      padding: EdgeInsets.symmetric(vertical: 3.h),
                      decoration: BoxDecoration(
                          color: AppColors.green700,
                          borderRadius: BorderRadius.circular(50)),
                      child: Text('$percentComplete',
                          style: TextStyle(
                              fontSize: 20.sp,
                              fontWeight: FontWeight.w700,
                              color: Colors.white)),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            alignment: Alignment.center,
                            width: 75.w,
                            padding: EdgeInsets.symmetric(vertical: 3.h),
                            decoration: BoxDecoration(
                                color: AppColors.green400,
                                borderRadius: BorderRadius.circular(50)),
                            child: Text('$percentGood',
                                style: TextStyle(
                                    fontSize: 20.sp,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white)),
                          ),
                          const SizedBox(width: 5),
                          Container(
                            alignment: Alignment.center,
                            width: 75.w,
                            padding: EdgeInsets.symmetric(vertical: 3.h),
                            decoration: BoxDecoration(
                                color: AppColors.errorColor,
                                borderRadius: BorderRadius.circular(50)),
                            child: Text('$percentNotGood',
                                style: TextStyle(
                                    fontSize: 20.sp,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white)),
                          ),
                        ],
                      ),
                    )
                  ],
                )
              ]),
            ),
          ),
        ),
      ),
    );
  }
}
