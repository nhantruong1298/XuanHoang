import 'package:example_nav2/app/modules/choose_category/views/choose_category_view.dart';
import 'package:example_nav2/app/modules/choose_project/views/widgets/blur_background.dart';
import 'package:example_nav2/app/modules/choose_project/views/widgets/choose_project_app_bar.dart';
import 'package:example_nav2/app/modules/home/views/home_view.dart';
import 'package:example_nav2/app/modules/progress/check_progress/views/check_progress_view.dart';
import 'package:example_nav2/app/modules/progress/choose_progress/controllers/choose_progress_controller.dart';
import 'package:example_nav2/generated/assets.gen.dart';
import 'package:example_nav2/generated/l10n.dart';
import 'package:example_nav2/resources/app_constants.dart';
import 'package:example_nav2/resources/app_dimensions.dart';
import 'package:example_nav2/resources/app_formatter.dart';
import 'package:example_nav2/widgets/input/text_input_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ChooseProgressView extends GetView<ChooseProgressController> {
  static const String routeName = '${HomeView.routeName}/choose-progress';
  static const String path = '/choose-progress';
  const ChooseProgressView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        extendBodyBehindAppBar: true,
        appBar: ChooseProjectAppBar(
          leadingIcon: Assets.images.arrowBackIcon.path,
          title: S.current.CHOOSE_PROGRESS__CHOOSE_PROGRESS_TEXT,
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
                        TextInputField(
                          borderRadius: 25,
                          contentPadding: 20,
                          suffixIcon: Assets.images.searchIcon.svg(
                              height: 22, width: 22, fit: BoxFit.scaleDown),
                        ),
                        SizedBox(height: 20.h),
                        Obx(() {
                          final listProgress = controller.listProgress;
                          return Expanded(
                            child: ListView.separated(
                              separatorBuilder: (context, index) =>
                                  const SizedBox(
                                height: 10,
                              ),
                              itemCount: listProgress.length,
                              itemBuilder: (context, index) {
                                final item = listProgress[index];
                                return _ProgressItem(
                                  onTap: () {
                                    Get.toNamed(ChooseCategoryView.routeName,
                                        arguments: item.idPhase);
                                  },
                                  fromDate: item.fromDate,
                                  toDate: item.toDate,
                                  title: item.name,
                                );
                              },
                            ),
                          );
                        })
                      ])),
            ),
          ],
        ));
  }
}

class _ProgressItem extends StatelessWidget {
  final String? title;
  final DateTime? fromDate;
  final DateTime? toDate;
  final VoidCallback? onTap;
  const _ProgressItem({
    Key? key,
    this.title,
    this.fromDate,
    this.toDate,
    this.onTap,
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
          color: Colors.white,
          child: InkWell(
            onTap: onTap,
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.all(AppDimensions.defaultPadding),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(title ?? '',
                        style: TextStyle(
                            fontSize: 17.sp, fontWeight: FontWeight.w700)),
                    SizedBox(height: 16.h),
                    Row(
                      children: [
                        Text(
                            AppFormatter.formatDate(fromDate) +
                                ' - ' +
                                AppFormatter.formatDate(toDate),
                            style: TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 16.sp)),
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
