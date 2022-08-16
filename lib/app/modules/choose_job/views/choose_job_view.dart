import 'package:example_nav2/app/data/models/enum/working_item_status.dart';
import 'package:example_nav2/app/modules/choose_category/views/choose_category_view.dart';
import 'package:example_nav2/app/modules/add_image/views/add_image_view.dart';
import 'package:example_nav2/app/modules/choose_job/controllers/choose_job_controller.dart';
import 'package:example_nav2/app/modules/choose_job/widgets/remark_dialog.dart';
import 'package:example_nav2/app/modules/choose_project/views/widgets/blur_background.dart';
import 'package:example_nav2/app/modules/choose_project/views/widgets/choose_project_app_bar.dart';
import 'package:example_nav2/app/modules/home/views/home_view.dart';
import 'package:example_nav2/app/modules/images_history.dart/views/images_history_view.dart';
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

class ChooseJobView extends GetView<ChooseJobController> {
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
                        Obx(() {
                          final list = controller.listJob;
                          return Expanded(
                              child: ListView.separated(
                                  itemBuilder: (context, index) {
                                    final item = list[index];
                                    return _StaffJob(
                                      onTap: () {},
                                      onSuccessTap: () async {
                                        final note =
                                            await showRemarkDialog(context);
                                        controller.doCheck(
                                            item.copyWith(
                                                idWorkingItemStatus:
                                                    WorkingItemStatus.success),
                                            note);
                                      },
                                      onFailedTap: () async {
                                        final note =
                                            await showRemarkDialog(context);
                                        controller.doCheck(
                                            item.copyWith(
                                                idWorkingItemStatus:
                                                    WorkingItemStatus.failed),
                                            note);
                                      },
                                      onImageTap: () {
                                        Get.toNamed(ImagesHistoryView.routeName,
                                            arguments: item.idWorkingItem);
                                      },
                                      onCameraTap: () {
                                        Get.toNamed(AddImageView.routeName,
                                            arguments: item.idWorkingItem);
                                      },
                                      name: item.itemName,
                                      description: item.description,
                                      idWorkingItem: item.idWorkingItem,
                                      idWorkingItemStatus:
                                          item.idWorkingItemStatus,
                                    );
                                  },
                                  separatorBuilder: (context, index) =>
                                      const SizedBox(
                                        height: 10,
                                      ),
                                  itemCount: list.length));
                        }),
                        SizedBox(height: 20.h),
                      ])),
            ),
          ],
        ));
  }

  Future<String> showRemarkDialog(BuildContext context) async {
    final note = await showDialog<String>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return RemarkDialog();
      },
    );
    return note ?? '';
  }
}

class _CustomerJob extends StatelessWidget {
  final Color? color;
  const _CustomerJob({Key? key, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Slidable(
      key: const ValueKey(0),
      child: Container(
        child: AppListTile(
          onTap: () {},
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
          contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          borderRadius: BorderRadius.circular(15),
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
        ],
      ),
    );
  }
}

class _StaffJob extends StatelessWidget {
  final String? idWorkingItem;
  final String? name;
  final String? idWorkingItemStatus;
  final String? description;
  final VoidCallback? onTap;
  final VoidCallback? onSuccessTap;
  final VoidCallback? onFailedTap;
  final VoidCallback? onImageTap;
  final VoidCallback? onCameraTap;
  const _StaffJob({
    Key? key,
    this.idWorkingItem,
    this.name,
    this.description,
    this.onTap,
    this.onSuccessTap,
    this.onFailedTap,
    this.idWorkingItemStatus,
    this.onImageTap,
    this.onCameraTap,
  }) : super(key: key);

  Color get statusColor {
    switch (idWorkingItemStatus) {
      case WorkingItemStatus.success:
        return AppColors.green400;
      case WorkingItemStatus.failed:
        return AppColors.errorColor;
      default:
        return AppColors.primaryLightColor;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Slidable(
      key: ValueKey<String?>(idWorkingItem),
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 5),
        child: AppListTile(
          color: statusColor,
          onTap: onTap,
          contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
          borderRadius: BorderRadius.circular(15),
          title: Text(name ?? '',
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 17.sp)),
          subTitle: Container(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(height: 15),
                Text(description ?? '',
                    style: TextStyle(
                        fontWeight: FontWeight.w400, fontSize: 16.sp)),
              ],
            ),
          ),
        ),
      ),
      endActionPane: ActionPane(
        extentRatio: 0.9,
        motion: ScrollMotion(),
        children: [
          Expanded(
            child: Container(
              margin: const EdgeInsets.only(top: 5, bottom: 5, left: 5),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [AppConstants.defaultBoxShadow]),
              child: Row(children: [
                SizedBox(
                  width: 5,
                  child: Container(),
                ),
                CustomSlidableAction(
                  onPressed: (_) {
                    onSuccessTap!();
                  },
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
                    onPressed: (_) {
                      onFailedTap!();
                    },
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
                  onPressed: (_) => onCameraTap!(),
                  backgroundColor: AppColors.primaryLightColor,
                  child: Assets.images.cameraIcon
                      .svg(height: 37, width: 37, fit: BoxFit.scaleDown),
                ),
                CustomSlidableAction(
                    onPressed: (_) => onImageTap!(),
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
