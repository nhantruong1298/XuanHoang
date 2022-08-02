import 'package:example_nav2/app/modules/choose_project/views/widgets/blur_background.dart';
import 'package:example_nav2/app/modules/choose_project/views/widgets/choose_project_app_bar.dart';
import 'package:example_nav2/app/modules/home/views/home_view.dart';
import 'package:example_nav2/generated/assets.gen.dart';
import 'package:example_nav2/generated/l10n.dart';
import 'package:example_nav2/resources/app_colors.dart';
import 'package:example_nav2/resources/app_dimensions.dart';
import 'package:example_nav2/widgets/common/app_list_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class WarningView extends StatelessWidget {
  static const String routeName = '${HomeView.path}$path';
  static const String path = '/warning';
  const WarningView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        extendBodyBehindAppBar: true,
        appBar: ChooseProjectAppBar(
          leadingIcon: Assets.images.arrowBackIcon.path,
          title: S.current.WARNING__TITLE,
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
                        PhysicalModel(
                          color: AppColors.primaryLightColor,
                          elevation: 3,
                          shadowColor: AppColors.primaryDarkColor,
                          borderRadius: BorderRadius.circular(15),
                          child: AppListTile(
                            onTap: () {},
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 16, vertical: 20),
                            borderRadius: BorderRadius.circular(
                                AppDimensions.defaultRadius),
                            title: Text(
                              'Hợp đồng Kingston01 sẽ hết hạn vào ngày 1/7/2023',
                              style: TextStyle(
                                  fontSize: 17.sp, fontWeight: FontWeight.w700),
                            ),
                          ),
                        )
                      ])),
            ),
          ],
        ));
  }
}
