import 'package:example_nav2/app/data/models/enum/project_type.dart';
import 'package:example_nav2/app/modules/project/controllers/project_controller.dart';
import 'package:example_nav2/app/modules/home/views/home_view.dart';
import 'package:example_nav2/app/modules/phase/choose_phase/views/choose_phase_view.dart';
import 'package:example_nav2/app/modules/report/report_list/views/report_list_view.dart';
import 'package:example_nav2/generated/assets.gen.dart';
import 'package:example_nav2/widgets/common/app_list_tile.dart';
import 'package:example_nav2/widgets/input/search_input_field.dart';
import 'package:example_nav2/widgets/layouts/blur_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class ProjectView extends GetView<ProjectController> {
  static const String routeName = '${HomeView.path}$path';
  static const String path = '/choose-project';
  const ProjectView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlurLayout(
        title: 'Chọn dự án',
        extendBodyBehindAppBar: true,
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
        child: Column(children: [
          SizedBox(height: 30.h),
          SearchInputField(onChanged: controller.onSearchChanged),
          SizedBox(height: 20.h),
          Expanded(
            child: RefreshIndicator(
              onRefresh: controller.onRefreshData,
              child: Obx(
                () {
                  final list = controller.listProject;
                  return ListView.separated(
                    keyboardDismissBehavior:
                        ScrollViewKeyboardDismissBehavior.onDrag,
                    separatorBuilder: (_, __) => const SizedBox(height: 10),
                    itemCount: list.length,
                    itemBuilder: (_, index) {
                      final item = list[index];

                      return _ProjectItem(
                          name: item.name,
                          address: item.address,
                          onTap: () {
                            if (controller.projectType == ProjectType.manual) {
                              Get.toNamed(ChoosePhaseView.routeName,
                                  arguments: item.idProject);
                            }
                            if (controller.projectType ==
                                ProjectType.incident) {
                              Get.toNamed(ReportListView.routeName,
                                  arguments: item.idProject);
                            }
                          });
                    },
                  );
                },
              ),
            ),
          )
        ]));
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
      title: Container(
        height: 20,
        child: Text(name ?? '',
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontSize: 17.sp, fontWeight: FontWeight.w700)),
      ),
      subTitle: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        SizedBox(height: 16.h),
        Row(
          children: [
            SvgPicture.asset('assets/images/location-icon.svg',
                height: 13, fit: BoxFit.scaleDown),
            SizedBox(width: 8.w),
            Flexible(
              child: Container(
                height: 20,
                child: Text(address ?? '',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        fontWeight: FontWeight.w400, fontSize: 16.sp)),
              ),
            ),
            SizedBox(width: 8.w),
          ],
        )
      ]),
    );
  }
}
