import 'package:example_nav2/app/modules/choose_category/views/choose_category_view.dart';
import 'package:example_nav2/app/modules/choose_project/views/widgets/blur_background.dart';
import 'package:example_nav2/app/modules/choose_project/views/widgets/choose_project_app_bar.dart';
import 'package:example_nav2/app/modules/home/views/home_view.dart';
import 'package:example_nav2/app/modules/progress/check_progress/controllers/check_progress_controller.dart';
import 'package:example_nav2/app/modules/progress/choose_progress/views/choose_progress_view.dart';
import 'package:example_nav2/generated/assets.gen.dart';
import 'package:example_nav2/generated/l10n.dart';
import 'package:example_nav2/resources/app_colors.dart';
import 'package:example_nav2/resources/app_dimensions.dart';
import 'package:example_nav2/widgets/common/button/app_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CheckProgressView extends GetView<CheckProgressController> {
  static const String routeName =
      '${HomeView.path}${ChooseProgressView.path}$path';
  static const String path = '/check-progress';

  const CheckProgressView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        extendBodyBehindAppBar: true,
        appBar: ChooseProjectAppBar(
          leadingIcon: Assets.images.arrowBackIcon.path,
          title: S.current.CHECK_PROGRESS__TITLE,
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
                  padding: const EdgeInsets.symmetric(horizontal: 18),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 30.h),
                        Expanded(
                            child: Container(
                          padding: EdgeInsets.all(16),
                          decoration: BoxDecoration(
                              color: AppColors.primaryLightColor,
                              borderRadius: BorderRadius.circular(
                                  AppDimensions.defaultLRadius)),
                          child: Column(
                            children: [
                              _ListTitle(),
                              const SizedBox(height: 10),
                              Expanded(
                                  child: ListView.separated(
                                itemCount: 10,
                                separatorBuilder: (context, index) =>
                                    const SizedBox(height: 15),
                                itemBuilder: (context, index) => _ListItem(),
                              ))
                            ],
                          ),
                        )),
                        const SizedBox(height: 20),
                        AppButton(
                          text: S.current.CHECK_PROGRESS__DETAIL,
                          onTap: controller.onDetailButtonPressed,
                          borderRadius: BorderRadius.circular(
                              AppDimensions.defaultMRadius),
                        )
                      ])),
            ),
          ],
        ));
  }
}

class _ListItem extends StatelessWidget {
  const _ListItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: [
            Text('Hạn mục 1: ',
                style: TextStyle(
                  color: AppColors.textColor,
                  fontSize: 20.sp,
                )),
            Text(
              '20%',
              style: TextStyle(
                  color: AppColors.green700,
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w700),
            )
          ],
        ),
        const SizedBox(height: 5),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Đạt: ',
                style: TextStyle(
                  color: AppColors.textColor,
                  fontSize: 20.sp,
                )),
            Text(
              '20%',
              style: TextStyle(
                  color: AppColors.green700,
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w700),
            ),
            Text(' - ',
                style: TextStyle(
                  color: AppColors.textColor,
                  fontSize: 20.sp,
                )),
            Text('Không đạt: ',
                style: TextStyle(
                  color: AppColors.textColor,
                  fontSize: 20.sp,
                )),
            Text(
              '35%',
              style: TextStyle(
                  color: AppColors.errorColor,
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w700),
            )
          ],
        )
      ],
    );
  }
}

class _ListTitle extends StatelessWidget {
  const _ListTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Hoàn thành ',
          style: TextStyle(
            fontSize: 25.sp,
            fontWeight: FontWeight.w700,
          ),
        ),
        Text(
          '60%',
          style: TextStyle(
              fontSize: 25.sp,
              fontWeight: FontWeight.w700,
              color: AppColors.green700),
        )
      ],
    );
  }
}
