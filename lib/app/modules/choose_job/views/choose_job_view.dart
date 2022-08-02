import 'package:example_nav2/app/modules/choose_category/views/choose_category_view.dart';
import 'package:example_nav2/app/modules/choose_job/widgets/remark_dialog.dart';
import 'package:example_nav2/app/modules/choose_project/views/widgets/blur_background.dart';
import 'package:example_nav2/app/modules/choose_project/views/widgets/choose_project_app_bar.dart';
import 'package:example_nav2/app/modules/home/views/home_view.dart';
import 'package:example_nav2/app/modules/progress/choose_progress/views/choose_progress_view.dart';
import 'package:example_nav2/generated/assets.gen.dart';
import 'package:example_nav2/generated/l10n.dart';
import 'package:example_nav2/resources/app_colors.dart';
import 'package:example_nav2/resources/app_constants.dart';
import 'package:example_nav2/resources/app_dimensions.dart';
import 'package:example_nav2/widgets/common/app_list_tile.dart';
import 'package:example_nav2/widgets/common/button/app_button.dart';
import 'package:example_nav2/widgets/input/search_input_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class ChooseJobView extends StatelessWidget {
  static const String routeName =
      '${HomeView.path}${ChooseProgressView.path}${ChooseCategoryView.path}$path';
  static const String path = '/choose-job';
  const ChooseJobView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        extendBodyBehindAppBar: true,
        appBar: ChooseProjectAppBar(
          leadingIcon: Assets.images.arrowBackIcon.path,
          title: S.current.CHOOSE_JOB__TITLE,
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
        bottomNavigationBar: AppButton(
          text: 'Gửi báo cáo',
          onTap: () {},
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
                          borderRadius: AppDimensions.defaultXLRadius,
                        ),
                        SizedBox(height: 20.h),
                        _StaffJob(),
                        SizedBox(height: 20.h),
                        // _CustomerJob(
                        //   color: AppColors.green400,
                        // )
                      ])),
            ),
          ],
        ));
  }

  Future<void> showRemarkDialog(BuildContext context) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return RemarkDialog();
      },
    );
  }
}

class _CustomerJob extends StatelessWidget {
  final Color? color;
  const _CustomerJob({Key? key, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Slidable(
      key: const ValueKey(0),
      child: PhysicalModel(
        color: color ?? AppColors.primaryLightColor,
        elevation: 5,
        shadowColor: AppColors.primaryDarkColor,
        borderRadius: BorderRadius.circular(15),
        child: Container(
          child: ClipRRect(
            child: AppListTile(
              color: color,
              title: Text('Đầu báo khói 001',
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 17.sp,
                      color: (color == null)
                          ? AppColors.primaryDarkColor
                          : AppColors.primaryLightColor)),
              subTitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 15,
                  ),
                  Text('KingstonL1B1ID001',
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 16.sp,
                          color: (color == null)
                              ? AppColors.primaryDarkColor
                              : AppColors.primaryLightColor)),
                ],
              ),
              contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 5),
              borderRadius: BorderRadius.circular(15),
            ),
          ),
        ),
      ),
      endActionPane: ActionPane(
        extentRatio: 0.2,
        motion: ScrollMotion(),
        children: [
          Expanded(
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: PhysicalModel(
                    color: AppColors.primaryLightColor,
                    elevation: 5,
                    shadowColor: AppColors.primaryDarkColor,
                    borderRadius: BorderRadius.circular(15),
                    child: Container(
                      margin: EdgeInsets.all(10),
                      width: double.infinity,
                      height: double.infinity,
                      child: Assets.images.galleryIcon
                          .svg(height: 37, width: 37, fit: BoxFit.scaleDown),
                    ),
                  ),
                ),
              ],
            ),
          )
          // Expanded(
          //   child: PhysicalModel(
          //     color: AppColors.primaryLightColor,
          //     elevation: 5,
          //     shadowColor: AppColors.primaryDarkColor,
          //     borderRadius: BorderRadius.circular(15),
          //     child: Padding(
          //       padding: const EdgeInsets.all(5),
          //       child: Row(children: [
          //         SizedBox(
          //           width: 5,
          //         ),
          //         Expanded(
          //           child: Container(
          //             height: double.infinity,
          //             width: double.infinity,
          //             decoration: BoxDecoration(),
          //             child: SizedBox(
          //               child: ClipRRect(
          //                 borderRadius: BorderRadius.circular(15),
          //                 child: Material(
          //                   borderRadius: BorderRadius.circular(15),
          //                   child: Assets.images.galleryIcon.svg(
          //                       height: 37, width: 37, fit: BoxFit.scaleDown),
          //                 ),
          //               ),
          //             ),
          //           ),
          //         )
          //       ]),
          //     ),
          //   ),
          // )
        ],
      ),
    );
  }
}

class _StaffJob extends StatelessWidget {
  const _StaffJob({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Slidable(
      key: const ValueKey(0),
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 10),
        width: double.infinity,
        height: 90,
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 32),
        decoration: BoxDecoration(
            color: AppColors.primaryLightColor,
            borderRadius: BorderRadius.circular(15),
            boxShadow: [AppConstants.defaultBoxShadow]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Vệ sinh tủ điện',
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 17.sp)),
            Assets.images.infoIcon.svg(
                color: Color(0xFF0081C9), height: 27, fit: BoxFit.scaleDown)
          ],
        ),
      ),
      endActionPane: ActionPane(
        extentRatio: 0.7,
        motion: ScrollMotion(),
        children: [
          Expanded(
            child: Container(
              margin: const EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [AppConstants.defaultBoxShadow]),
              child: Row(children: [
                SizedBox(
                  width: 5,
                  child: Container(),
                ),
                CustomSlidableAction(
                  onPressed: (_) {},
                  backgroundColor: AppColors.green400,
                  child: Text(
                    'Đạt',
                    style: TextStyle(
                      fontSize: 16.sp,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      bottomLeft: Radius.circular(15)),
                ),
                CustomSlidableAction(
                    onPressed: (_) {},
                    backgroundColor: AppColors.errorColor,
                    child: Text(
                      'Không\nđạt',
                      style: TextStyle(
                        fontSize: 16.sp,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    )),
                CustomSlidableAction(
                    onPressed: (context) async {
                      final ImagePicker _picker = ImagePicker();
                      // Pick an image
                      final XFile? image =
                          await _picker.pickImage(source: ImageSource.gallery);
                    },
                    backgroundColor: AppColors.primaryLightColor,
                    child: Assets.images.galleryIcon
                        .svg(height: 37, width: 37, fit: BoxFit.scaleDown),
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(15),
                        bottomRight: Radius.circular(15)))
              ]),
            ),
          )
        ],
      ),
    );
  }
}
