import 'package:example_nav2/app/modules/project/views/widgets/blur_background.dart';
import 'package:example_nav2/app/modules/project/views/widgets/choose_project_app_bar.dart';
import 'package:example_nav2/app/modules/home/views/home_view.dart';
import 'package:example_nav2/app/modules/warning/controllers/warning_controller.dart';
import 'package:example_nav2/generated/assets.gen.dart';
import 'package:example_nav2/generated/l10n.dart';
import 'package:example_nav2/resources/app_colors.dart';
import 'package:example_nav2/resources/app_dimensions.dart';
import 'package:example_nav2/resources/app_formatter.dart';
import 'package:example_nav2/widgets/common/app_list_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class WarningView extends GetView<WarningController> {
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
            SizedBox(width: 10)
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
                        Obx(() {
                          final listWarning = controller.listWarning;
                          return Expanded(
                            child: RefreshIndicator(
                              onRefresh: controller.onRefreshData,
                              child: ListView.separated(
                                separatorBuilder: (context, index) =>
                                    const SizedBox(
                                  height: 10,
                                ),
                                itemCount: listWarning.length,
                                itemBuilder: (context, index) {
                                  final item = listWarning[index];
                                  return _WarningItem(
                                    onTap: () {
                                      controller.onWarningItemPressed(item);
                                    },
                                    name: item.detailName,
                                    expiredDate: item.expireDate,
                                  );
                                },
                              ),
                            ),
                          );
                        })
                      ])),
            ),
          ],
        ));
  }
}

class _WarningItem extends StatelessWidget {
  const _WarningItem({
    this.name,
    this.onTap,
    Key? key,
    this.expiredDate,
  }) : super(key: key);

  final String? name;
  final VoidCallback? onTap;
  final DateTime? expiredDate;

  @override
  Widget build(BuildContext context) {
    return PhysicalModel(
      color: AppColors.primaryLightColor,
      elevation: 3,
      shadowColor: AppColors.primaryDarkColor,
      borderRadius: BorderRadius.circular(15),
      child: AppListTile(
          onTap: onTap,
          contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          borderRadius: BorderRadius.circular(AppDimensions.defaultRadius),
          title: Container(
            alignment: Alignment.centerLeft,
            height: 50,
            child: RichText(
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              text: TextSpan(
                text: name ?? '',
                style: TextStyle(
                    fontSize: 17.sp,
                    fontWeight: FontWeight.w700,
                    color: AppColors.textColor),
                children: <TextSpan>[
                  TextSpan(
                      text:
                          ' sẽ hết hạn vào ngày ${AppFormatter.formatDate(expiredDate)}',
                      style: TextStyle(
                          fontSize: 17.sp, fontWeight: FontWeight.w400)),
                ],
              ),
            ),
          )
          // Row(
          //   children: [
          //     Text(
          //       name ?? '',
          //       style: TextStyle(fontSize: 17.sp, fontWeight: FontWeight.w700),
          //       maxLines: 2,
          //       overflow: TextOverflow.ellipsis,
          //     ),
          //     Flexible(
          //       child: Text(
          //         ' sẽ hết hạn vào ngày' * 10,
          //         style: TextStyle(fontSize: 17.sp),
          //         maxLines: 2,
          //         overflow: TextOverflow.ellipsis,
          //       ),
          //     ),
          //   ],
          // ),
          ),
    );
  }
}
