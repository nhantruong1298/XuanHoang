import 'package:example_nav2/app/data/models/enum/project_type.dart';
import 'package:example_nav2/app/data/services/api_service.dart';
import 'package:example_nav2/app/data/services/auth_service.dart';
import 'package:example_nav2/app/modules/authenticate/change_password/views/change_password_view.dart';
import 'package:example_nav2/app/modules/choose_project/controllers/choose_project_controller.dart';
import 'package:example_nav2/app/modules/choose_project/views/widgets/blur_background.dart';
import 'package:example_nav2/app/modules/choose_project/views/widgets/choose_project_app_bar.dart';
import 'package:example_nav2/app/modules/home/views/home_view.dart';
import 'package:example_nav2/app/modules/login/views/login_view.dart';
import 'package:example_nav2/app/modules/progress/choose_progress/views/choose_progress_view.dart';
import 'package:example_nav2/app/modules/report/report_list/views/report_list_view.dart';
import 'package:example_nav2/generated/assets.gen.dart';
import 'package:example_nav2/generated/l10n.dart';
import 'package:example_nav2/widgets/common/app_list_tile.dart';
import 'package:example_nav2/widgets/common/dialogs/confirm_dialog.dart';
import 'package:example_nav2/widgets/input/search_input_field.dart';
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
                        SearchInputField(
                          borderRadius: 25,
                          contentPadding: 20,
                          onChanged: (value) {
                            controller.onSearchChanged(value);
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
                                          if (controller.projectType ==
                                              ProjectType.manual) {
                                            Get.toNamed(
                                                ChooseProgressView.routeName,
                                                arguments:
                                                    list[index].idProject);
                                          } else if (controller.projectType ==
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
