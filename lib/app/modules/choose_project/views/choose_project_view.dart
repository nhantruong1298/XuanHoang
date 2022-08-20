import 'package:example_nav2/app/data/models/enum/project_type.dart';
import 'package:example_nav2/app/data/services/api_service.dart';
import 'package:example_nav2/app/data/services/auth_service.dart';
import 'package:example_nav2/app/modules/authenticate/change_password/views/change_password_view.dart';
import 'package:example_nav2/app/modules/choose_project/controllers/choose_project_controller.dart';
import 'package:example_nav2/app/modules/choose_project/views/widgets/blur_background.dart';
import 'package:example_nav2/app/modules/home/views/home_view.dart';
import 'package:example_nav2/app/modules/login/views/login_view.dart';
import 'package:example_nav2/app/modules/progress/choose_progress/views/choose_progress_view.dart';
import 'package:example_nav2/app/modules/report/report_list/views/report_list_view.dart';
import 'package:example_nav2/generated/assets.gen.dart';
import 'package:example_nav2/widgets/common/app_list_tile.dart';
import 'package:example_nav2/widgets/common/dialogs/confirm_dialog.dart';
import 'package:example_nav2/widgets/input/text_input_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class ChooseProjectView extends GetView<ChooseProjectController> {
  static const String routeName = '${HomeView.path}$path';
  static const String path = '/choose-project';
  const ChooseProjectView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final projectType = Get.arguments as ProjectType?;
    return Scaffold(
        resizeToAvoidBottomInset: false,
        extendBodyBehindAppBar: true,
        appBar: _buildAppBar(projectType),
        body: Stack(
          children: [
            const BlurBackGround(),
            SafeArea(
              child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 30.h),
                        TextInputField(
                          borderRadius: 25,
                          contentPadding: 20,
                          suffixIcon: Icon(
                            Icons.search,
                            color: Color(0xFFC0C0C0),
                            size: 22,
                          ),
                          onChanged: (value) {
                            controller.onSearchChanged(value ?? '');
                          },
                        ),
                        SizedBox(height: 20.h),
                        Obx(
                          () {
                            final list = controller.listProject;
                            return Expanded(
                              child: RefreshIndicator(
                                onRefresh: controller.onRefreshData,
                                child: ListView.separated(
                                  separatorBuilder: (context, index) =>
                                      const SizedBox(height: 10),
                                  itemCount: list.length,
                                  itemBuilder: (context, index) {
                                    return _ProjectItem(
                                        name: list[index].name,
                                        address: list[index].address,
                                        onTap: () {
                                          if (projectType ==
                                              ProjectType.manual) {
                                            Get.toNamed(
                                                ChooseProgressView.routeName,
                                                arguments:
                                                    list[index].idProject);
                                          } else if (projectType ==
                                              ProjectType.incident) {
                                            Get.toNamed(
                                                ReportListView.routeName,
                                                arguments:
                                                    list[index].idProject);
                                          }
                                        });
                                  },
                                ),
                              ),
                            );
                          },
                        )
                      ])),
            ),
          ],
        ));
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

  AppBar _buildAppBar(ProjectType? type) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: (type == ProjectType.manual)
          ? _buildExitButton()
          : IconButton(
              onPressed: () {
                Get.back();
              },
              icon: SvgPicture.asset(Assets.images.arrowBackIcon.path,
                  height: 30, width: 30, fit: BoxFit.scaleDown),
            ),
      centerTitle: true,
      title: Text('Chọn dự án',
          style: TextStyle(
              fontSize: 27.sp,
              fontWeight: FontWeight.w700,
              color: Colors.black)),
      actions: [
        (type == ProjectType.manual)
            ? _buildChangePasswordButton()
            : IconButton(
                onPressed: () {
                  Get.offNamedUntil(HomeView.routeName, (route) => false);
                },
                icon: Assets.images.homeIcon
                    .svg(height: 30, fit: BoxFit.scaleDown)),
        SizedBox(width: 10.w)
      ],
    );
  }
}

class _ProjectItem extends StatelessWidget {
  final String? name;
  final String? address;
  final VoidCallback? onTap;
  const _ProjectItem({
    Key? key,
    this.name,
    this.address,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppListTile(
      onTap: onTap,
      contentPadding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
      borderRadius: BorderRadius.circular(15),
      title: Text(name ?? '',
          style: TextStyle(fontSize: 17.sp, fontWeight: FontWeight.w700)),
      subTitle: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        SizedBox(height: 16.h),
        Row(
          children: [
            SvgPicture.asset('assets/images/location-icon.svg',
                height: 13, fit: BoxFit.scaleDown),
            SizedBox(width: 8.w),
            Text(address ?? '',
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16.sp)),
            SizedBox(width: 8.w),
          ],
        )
      ]),
    );
    // return Container(
    //   width: double.infinity,
    //   padding: EdgeInsets.all(16),
    //   decoration: BoxDecoration(
    //       color: Colors.white, borderRadius: BorderRadius.circular(15)),
    //   child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
    //     Text('Toà nhà công đoàn cao su',
    //         style: TextStyle(fontSize: 17.sp, fontWeight: FontWeight.w700)),
    //     SizedBox(height: 16.h),
    //     Row(
    //       children: [
    //         SvgPicture.asset('assets/images/location-icon.svg',
    //             height: 13, fit: BoxFit.scaleDown),
    //         SizedBox(width: 8.w),
    //         Text('229 Hoàng Văn Thụ, F8, PN',
    //             style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16.sp)),
    //         SizedBox(width: 8.w),
    //       ],
    //     )
    //   ]),
    // );
  }
}
