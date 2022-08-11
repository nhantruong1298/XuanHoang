import 'package:example_nav2/app/data/models/enum/account_type.dart';
import 'package:example_nav2/app/data/services/auth_service.dart';
import 'package:example_nav2/app/modules/choose_project/views/choose_project_view.dart';
import 'package:example_nav2/app/modules/choose_project/views/widgets/blur_background.dart';
import 'package:example_nav2/app/modules/document/check_document/views/check_document_view.dart';
import 'package:example_nav2/app/modules/progress/choose_progress/views/choose_progress_view.dart';
import 'package:example_nav2/app/modules/report/report_list/views/report_list_view.dart';
import 'package:example_nav2/app/modules/warning/views/warning_view.dart';
import 'package:example_nav2/generated/assets.gen.dart';
import 'package:example_nav2/generated/l10n.dart';
import 'package:example_nav2/resources/app_colors.dart';
import 'package:example_nav2/resources/app_constants.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:example_nav2/widgets/typography/heading_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class HomeView extends StatelessWidget {
  static const String routeName = '/home';
  static const String path = '/home';
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          BlurBackGround(),
          SafeArea(
            child: Container(
              width: double.infinity,
              height: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 50.h),
                    Heading1Text(S.current.CHOOSE_FEATURE__TITLE),
                    SizedBox(height: 200.h),
                    Expanded(child: _buildMenu())
                  ]),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMenu() {
    final accountType = Get.find<AuthService>().accountType;
    switch (accountType) {
      case AccountType.staff:
      case AccountType.admin:
        return _buildStaffFeatures();
      case AccountType.customer:
        return _buildCustomerFeatures();
      default:
        return const SizedBox.shrink();
    }
  }

  Widget _buildCustomerFeatures() {
    return Column(
      children: [
        _FeatureItem(
          icon: Assets.images.progressIcon.path,
          title: S.current.CHOOSE_FEATURE__CHECK_THE_TERM,
          onTap: () {
            Get.toNamed(ChooseProgressView.routeName);
          },
        ),
        SizedBox(height: 30.h),
        _FeatureItem(
          onTap: () {
            Get.toNamed(ReportListView.routeName);
          },
          icon: Assets.images.customerIcon.path,
          title: S.current.CHOOSE_FEATURE__REPORT_THE_PROBLEM,
          amount: 99,
        ),
        SizedBox(height: 30.h),
        _FeatureItem(
          onTap: () {
            Get.toNamed(WarningView.routeName);
          },
          icon: Assets.images.warnIcon.path,
          title: S.current.CHOOSE_FEATURE__WARNING,
          amount: 99,
        ),
        SizedBox(height: 30.h),
        _FeatureItem(
          onTap: () {
            Get.toNamed(CheckDocumentView.routeName);
          },
          icon: Assets.images.documentIcon.path,
          title: S.current.CHOOSE_FEATURE__CHECK_DOCUMENT,
        ),
      ],
    );
  }

  Widget _buildStaffFeatures() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        _FeatureItem(
          onTap: () {
            Get.toNamed(ChooseProjectView.routeName);
          },
          icon: Assets.images.checkIcon.path,
          title: 'Kiểm tra hạn mục',
        ),
        SizedBox(height: 30.h),
        _FeatureItem(
          onTap: () {
            Get.toNamed(ReportListView.routeName);
          },
          icon: Assets.images.customerIcon.path,
          title: 'Kiểm tra sự cố',
          amount: 99,
        ),
      ],
    );
  }
}

class _FeatureItem extends StatelessWidget {
  final String? icon;
  final String? title;
  final int? amount;
  final VoidCallback? onTap;
  const _FeatureItem({
    Key? key,
    this.amount,
    this.icon,
    this.title,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          boxShadow: [AppConstants.defaultBoxShadow]),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(50),
        child: Material(
          color: AppColors.primaryLightColor,
          child: InkWell(
            onTap: onTap,
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12),
              child: Row(children: [
                SvgPicture.asset(
                  icon!,
                  fit: BoxFit.scaleDown,
                  height: 70.h,
                ),
                SizedBox(width: 23.w),
                Text(title ?? '',
                    style:
                        TextStyle(color: Color(0xFF585858), fontSize: 20.sp)),
                const Spacer(),
                (amount != null)
                    ? Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 10.w, vertical: 3.h),
                        decoration: BoxDecoration(
                            color: Color(0xFFCB0000),
                            borderRadius: BorderRadius.circular(50)),
                        child: Text('+${amount ?? ''}',
                            style: TextStyle(
                                fontSize: 20.sp,
                                fontWeight: FontWeight.w700,
                                color: Colors.white)),
                      )
                    : const SizedBox.shrink()
              ]),
            ),
          ),
        ),
      ),
    );
  }
}
