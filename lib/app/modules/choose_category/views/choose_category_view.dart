import 'package:example_nav2/app/data/models/enum/account_type.dart';
import 'package:example_nav2/app/data/models/response/project_statistic_report_response.dart';
import 'package:example_nav2/app/data/models/working_term.dart';
import 'package:example_nav2/app/data/services/auth_service.dart';
import 'package:example_nav2/app/modules/choose_category/controllers/choose_category_controller.dart';
import 'package:example_nav2/app/modules/choose_job/views/choose_job_view.dart';
import 'package:example_nav2/app/modules/choose_project/views/widgets/blur_background.dart';
import 'package:example_nav2/app/modules/choose_project/views/widgets/choose_project_app_bar.dart';
import 'package:example_nav2/app/modules/home/views/home_view.dart';
import 'package:example_nav2/app/modules/progress/choose_progress/views/choose_progress_view.dart';
import 'package:example_nav2/generated/assets.gen.dart';
import 'package:example_nav2/generated/l10n.dart';
import 'package:example_nav2/resources/app_colors.dart';
import 'package:example_nav2/resources/app_constants.dart';
import 'package:example_nav2/resources/app_dimensions.dart';
import 'package:example_nav2/widgets/input/search_input_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ChooseTermView extends GetView<ChooseCategoryController> {
  static const String path = '/choose-term';
  static const String routeName =
      '${HomeView.path}${ChooseProgressView.path}$path';
  const ChooseTermView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        extendBodyBehindAppBar: true,
        appBar: ChooseProjectAppBar(
          leadingIcon: Assets.images.arrowBackIcon.path,
          title: S.current.CHOOSE_CATEGORY__CHOOSE_CATEGORY_TEXT,
          actions: [
            IconButton(
                onPressed: () {
                  Get.offNamedUntil(HomeView.routeName, (route) => false);
                },
                icon: Assets.images.homeIcon
                    .svg(height: 30, fit: BoxFit.scaleDown)),
            SizedBox(
              width: 10,
            )
          ],
        ),
        body: Stack(
          children: [
            Positioned.fill(child: BlurBackGround()),
            SafeArea(
              child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 30.h),
                        SearchInputField(
                          borderRadius: 25,
                          contentPadding: 20,
                          onChanged: (value) {
                            controller.onSearchChanged(value);
                          },
                        ),
                        SizedBox(height: 20.h),
                        Obx(() {
                          final listWorkingTerm =
                              controller.listWorkingTerm.toList();
                          final listTermStatistic =
                              controller.listTermStatistic.toList();

                          bool isStaff = AuthService.to.accountType ==
                                  AccountType.staff ||
                              AuthService.to.accountType == AccountType.admin;

                          return Expanded(
                              child: RefreshIndicator(
                            onRefresh: controller.onRefreshData,
                            child: ListView.separated(
                                itemBuilder: (context, index) {
                                  return (isStaff)
                                      ? _buildStaffTerm(listWorkingTerm, index)
                                      : _buildCustomerTerm(
                                          listTermStatistic, index);
                                },
                                separatorBuilder: (context, index) =>
                                    const SizedBox(height: 10),
                                itemCount: (isStaff)
                                    ? listWorkingTerm.length
                                    : listTermStatistic.length),
                          ));
                        })
                      ])),
            ),
          ],
        ));
  }

  Widget _buildStaffTerm(List<WorkingTerm> list, int index) {
    return _StaffTerm(
      onTap: () async {
        final isUpdated = await Get.toNamed(ChooseJobView.routeName,
            arguments: list[index].idWorkingTerm);

        if (isUpdated == true) {
          controller.onRefreshData();
        }
      },
      termName: list[index].termName,
      onInfoPressed: () {
        controller.onInfoPressed(list[index].instructionFile);
      },
      instructionFile: list[index].instructionFile,
    );
  }

  Widget _buildCustomerTerm(List<TermStatistic> list, int index) {
    final item = list[index];
    return _CustomerTerm(
      termName: item.termName,
      percentComplete: item.percentComplete,
      percentGood: item.percentGood,
      percentNotGood: item.percentNotGood,
      onTap: () async {
        final isUpdated = await Get.toNamed(ChooseJobView.routeName,
            arguments: list[index].idWorkingTerm);

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
    return Container(
      decoration: BoxDecoration(
        boxShadow: [AppConstants.defaultBoxShadow],
        borderRadius: BorderRadius.circular(AppDimensions.defaultPadding),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(AppDimensions.defaultPadding),
        child: Material(
          color: Colors.white,
          child: InkWell(
            onTap: onTap,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(termName ?? '',
                      style: TextStyle(
                          fontWeight: FontWeight.w700, fontSize: 17.sp)),
                  (instructionFile?.isNotEmpty == true)
                      ? IconButton(
                          onPressed: onInfoPressed,
                          icon: Assets.images.infoIcon.svg(
                              color: Color(0xFF0081C9),
                              height: 27,
                              fit: BoxFit.scaleDown))
                      : const SizedBox.shrink()
                ],
              ),
            ),
          ),
        ),
      ),
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
              padding: EdgeInsets.all(9),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(children: [
                Expanded(
                  child: Text('$termName',
                      style: TextStyle(
                          fontWeight: FontWeight.w700, fontSize: 17.sp)),
                ),
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
