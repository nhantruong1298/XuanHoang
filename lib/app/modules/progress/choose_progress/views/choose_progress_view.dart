import 'package:example_nav2/app/modules/choose_category/views/choose_category_view.dart';
import 'package:example_nav2/app/modules/choose_project/views/widgets/blur_background.dart';
import 'package:example_nav2/app/modules/choose_project/views/widgets/choose_project_app_bar.dart';
import 'package:example_nav2/app/modules/home/views/home_view.dart';
import 'package:example_nav2/app/modules/progress/check_progress/views/check_progress_view.dart';
import 'package:example_nav2/generated/assets.gen.dart';
import 'package:example_nav2/generated/l10n.dart';
import 'package:example_nav2/resources/app_dimensions.dart';
import 'package:example_nav2/widgets/input/text_input_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ChooseProgressView extends StatelessWidget {
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
                        TextInputField(
                          borderRadius: 25,
                          contentPadding: 20,
                          suffixIcon: Icon(
                            Icons.search,
                            color: Color(0xFFC0C0C0),
                            size: 22,
                          ),
                        ),
                        SizedBox(height: 20.h),
                        _ProgressItem(
                          title: 'Kỳ 1',
                          date: '1/7/2022 - 30/7/2022',
                          onTap: () {
                            Get.toNamed(ChooseCategoryView.routeName);
                          },
                        )
                      ])),
            ),
          ],
        ));
  }
}

class _ProgressItem extends StatelessWidget {
  final String? title;
  final String? date;
  final VoidCallback? onTap;
  const _ProgressItem({
    Key? key,
    this.title,
    this.date,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(AppDimensions.defaultRadius),
      child: Material(
        color: Colors.white,
        child: InkWell(
          onTap: onTap,
          child: Container(
            width: double.infinity,
            padding: EdgeInsets.all(AppDimensions.defaultPadding),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(title ?? '',
                  style:
                      TextStyle(fontSize: 17.sp, fontWeight: FontWeight.w700)),
              SizedBox(height: 16.h),
              Row(
                children: [
                  Text(date ?? '',
                      style: TextStyle(
                          fontWeight: FontWeight.w400, fontSize: 16.sp)),
                ],
              )
            ]),
          ),
        ),
      ),
    );
  }
}
