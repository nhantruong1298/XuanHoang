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

class ChooseCategoryView extends GetView<ChooseCategoryController> {
  static const String path = '/choose-category';
  static const String routeName =
      '${HomeView.path}${ChooseProgressView.path}$path';
  const ChooseCategoryView({Key? key}) : super(key: key);

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
                        ),
                        SizedBox(height: 20.h),
                        Obx(() {
                          final list = controller.listCategory;
                          return Expanded(
                              child: ListView.separated(
                                  itemBuilder: (context, index) {
                                    return _StaffCategory(
                                      onTap: () {
                                        Get.toNamed(
                                          ChooseJobView.routeName,
                                          arguments: list[index].idWorkingTerm
                                        );
                                      },
                                      termName: list[index].termName,
                                    );
                                  },
                                  separatorBuilder: (context, index) =>
                                      const SizedBox(
                                        height: 10,
                                      ),
                                  itemCount: list.length));
                        })
                      ])),
            ),
          ],
        ));
  }
}

class _StaffCategory extends StatelessWidget {
  final String? termName;
  final VoidCallback? onTap;
  const _StaffCategory({Key? key, this.termName, this.onTap}) : super(key: key);

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
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 32),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(termName ?? '',
                      style: TextStyle(
                          fontWeight: FontWeight.w700, fontSize: 17.sp)),
                  Assets.images.infoIcon.svg(
                      color: Color(0xFF0081C9),
                      height: 27,
                      fit: BoxFit.scaleDown)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _CustomerCategory extends StatelessWidget {
  const _CustomerCategory({
    Key? key,
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
            onTap: () {
              Get.toNamed(ChooseJobView.routeName);
            },
            child: Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(children: [
                Text('Kiểm tra đầu báo khói',
                    style: TextStyle(
                        fontWeight: FontWeight.w700, fontSize: 17.sp)),
                Expanded(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10.w, vertical: 3.h),
                      decoration: BoxDecoration(
                          color: AppColors.green700,
                          borderRadius: BorderRadius.circular(50)),
                      child: Text('${65}%',
                          style: TextStyle(
                              fontSize: 20.sp,
                              fontWeight: FontWeight.w700,
                              color: Colors.white)),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      width: 150,
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10.w, vertical: 3.h),
                            decoration: BoxDecoration(
                                color: AppColors.green400,
                                borderRadius: BorderRadius.circular(50)),
                            child: Text('${65}%',
                                style: TextStyle(
                                    fontSize: 20.sp,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white)),
                          ),
                          const SizedBox(width: 5),
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10.w, vertical: 3.h),
                            decoration: BoxDecoration(
                                color: AppColors.errorColor,
                                borderRadius: BorderRadius.circular(50)),
                            child: Text('${35}%',
                                style: TextStyle(
                                    fontSize: 20.sp,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white)),
                          ),
                        ],
                      ),
                    )
                  ],
                ))
              ]),
            ),
          ),
        ),
      ),
    );
  }
}
