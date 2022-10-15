import 'package:example_nav2/app/data/models/enum/account_type.dart';
import 'package:example_nav2/app/data/models/enum/project_type.dart';
import 'package:example_nav2/app/data/services/api_service.dart';
import 'package:example_nav2/app/data/services/auth_service.dart';
import 'package:example_nav2/app/modules/authenticate/change_password/views/change_password_view.dart';
import 'package:example_nav2/app/modules/project/views/choose_project_view.dart';
import 'package:example_nav2/app/modules/project/views/project_view.dart';
import 'package:example_nav2/app/modules/project/views/widgets/blur_background.dart';
import 'package:example_nav2/app/modules/document/views/document_view.dart';
import 'package:example_nav2/app/modules/login/views/login_view.dart';
import 'package:example_nav2/app/modules/phase/choose_phase/views/choose_phase_view.dart';
import 'package:example_nav2/app/modules/report/report_list/views/report_list_view.dart';
import 'package:example_nav2/app/modules/warning/views/warning_view.dart';
import 'package:example_nav2/generated/assets.gen.dart';
import 'package:example_nav2/generated/l10n.dart';
import 'package:example_nav2/resources/app_colors.dart';
import 'package:example_nav2/resources/app_constants.dart';
import 'package:example_nav2/widgets/common/dialogs/confirm_dialog.dart';
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
      appBar: _buildAppBar(),
      extendBodyBehindAppBar: true,
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
                    Expanded(
                        child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [_buildMenu()],
                    ))
                  ]),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildExitButton() {
    return IconButton(
      icon: SvgPicture.asset('assets/images/back-icon.svg',
          height: 30, fit: BoxFit.scaleDown),
      onPressed: () {
        showConfirmDialog(
            title: 'Đăng xuất khỏi tài khoản?',
            textConfirm: 'Đăng xuất',
            textCancel: 'Huỷ',
            onCancel: () {},
            onConfirm: () {
              ApiService.to.clearToken();
              AuthService.to.logout();
              Get.offNamed(LoginView.routeName);
            });
      },
    );
  }

  Widget _buildChangePasswordButton() {
    return IconButton(
      icon: SvgPicture.asset('assets/images/key-icon.svg',
          height: 30, fit: BoxFit.scaleDown),
      onPressed: () {
        Get.toNamed(ChangePasswordView.routeName);
      },
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: _buildExitButton(),
      actions: [_buildChangePasswordButton(), SizedBox(width: 10.w)],
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
            Get.toNamed(ChoosePhaseView.routeName,
                arguments: AuthService.to.profile?.idProject);
          },
        ),
        SizedBox(height: 30.h),
        _FeatureItem(
          onTap: () {
            Get.toNamed(ReportListView.routeName,
                arguments: AuthService.to.profile?.idProject);
          },
          icon: Assets.images.customerIcon.path,
          title: S.current.CHOOSE_FEATURE__REPORT_THE_PROBLEM,
        ),
        SizedBox(height: 30.h),
        _FeatureItem(
          onTap: () {
            Get.toNamed(WarningView.routeName,
                arguments: AuthService.to.profile?.idProject);
          },
          icon: Assets.images.warnIcon.path,
          title: S.current.CHOOSE_FEATURE__WARNING,
        ),
        SizedBox(height: 30.h),
        _FeatureItem(
          onTap: () {
            Get.toNamed(DocumentView.routeName);
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
            Get.toNamed(ProjectView.routeName,
                arguments: ProjectType.manual);
          },
          icon: Assets.images.checkIcon.path,
          title: 'Kiểm tra hạn mục',
        ),
        SizedBox(height: 30.h),
        _FeatureItem(
          onTap: () {
            Get.toNamed(ProjectView.routeName,
                arguments: ProjectType.incident);
          },
          icon: Assets.images.customerIcon.path,
          title: 'Kiểm tra sự cố',
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
