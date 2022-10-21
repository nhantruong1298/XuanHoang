import 'package:example_nav2/app/data/models/enum/account_type.dart';
import 'package:example_nav2/app/data/models/enum/working_item_status.dart';
import 'package:example_nav2/app/data/models/working_item.dart';
import 'package:example_nav2/app/data/services/auth_service.dart';
import 'package:example_nav2/app/modules/term/views/term_view.dart';
import 'package:example_nav2/app/modules/add_image/views/add_image_view.dart';
import 'package:example_nav2/app/modules/job/controllers/job_controller.dart';
import 'package:example_nav2/app/modules/job/widgets/remark_dialog.dart';
import 'package:example_nav2/app/modules/project/views/widgets/blur_background.dart';
import 'package:example_nav2/app/modules/project/views/widgets/choose_project_app_bar.dart';
import 'package:example_nav2/app/modules/home/views/home_view.dart';
import 'package:example_nav2/app/modules/images_history.dart/views/images_history_view.dart';
import 'package:example_nav2/app/modules/phase/choose_phase/views/choose_phase_view.dart';
import 'package:example_nav2/generated/assets.gen.dart';
import 'package:example_nav2/generated/l10n.dart';
import 'package:example_nav2/resources/app_colors.dart';
import 'package:example_nav2/resources/app_constants.dart';
import 'package:example_nav2/resources/app_dimensions.dart';
import 'package:example_nav2/widgets/common/app_list_tile.dart';
import 'package:example_nav2/widgets/common/button/app_button.dart';
import 'package:example_nav2/widgets/input/search_input_field.dart';
import 'package:example_nav2/widgets/layouts/blur_layout.dart';
import 'package:example_nav2/widgets/layouts/loading_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:get/get.dart';

class JobView extends GetView<JobController> {
  static const String routeName =
      '${HomeView.path}${ChoosePhaseView.path}${TermView.path}$path';
  static const String path = '/jobs';
  const JobView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    controller.initOverlay(context);

    return Stack(
      children: [
        BlurLayout(
            extendBodyBehindAppBar: true,
            appBar: _buildAppBar(),
            bottomNavigationBar: _buildNavigationBar(context),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 30.h),
                SearchInputField(onChanged: controller.onSearchChanged),
                SizedBox(height: 20.h),
                Expanded(
                    child: RefreshIndicator(
                  onRefresh: controller.onRefreshData,
                  child: Obx(() {
                    final list = controller.listJob;
                    return ListView.separated(
                        keyboardDismissBehavior:
                            ScrollViewKeyboardDismissBehavior.onDrag,
                        itemBuilder: (context, index) {
                          final item = list[index];
                          return (accountType == AccountType.staff ||
                                  accountType == AccountType.admin)
                              ? _buildStaffJob(context, item)
                              : _buildCustomerJob(item);
                        },
                        separatorBuilder: (_, __) => const SizedBox(height: 10),
                        itemCount: list.length);
                  }),
                )),
                SizedBox(height: 20.h),
              ],
            )),
        Obx(() => Visibility(
              visible: controller.isLoading.value,
              child: LoadingView(),
            ))
      ],
    );

    // return GestureDetector(
    //     onTap: FocusManager.instance.primaryFocus?.unfocus,
    //     child: Stack(
    //       children: [
    //         Scaffold(
    //             resizeToAvoidBottomInset: false,
    //             extendBodyBehindAppBar: true,
    //             appBar: _buildAppBar(),
    //             bottomNavigationBar: _buildNavigationBar(context),
    //             body: Stack(
    //               children: [
    //                 BlurBackGround(),
    //                 SafeArea(
    //                   child: Container(
    //                       width: double.infinity,
    //                       height: double.infinity,
    //                       padding: const EdgeInsets.symmetric(horizontal: 10),
    //                       child: Column(
    //                           crossAxisAlignment: CrossAxisAlignment.start,
    //                           children: [
    //                             SizedBox(height: 30.h),
    //                             SearchInputField(
    //                               borderRadius: AppDimensions.defaultXLRadius,
    //                               onChanged: (value) {
    //                                 controller.onSearchChanged(value);
    //                               },
    //                             ),
    //                             SizedBox(height: 20.h),
    //                             Obx(() {
    //                               final list = controller.listJob;
    //                               return Expanded(
    //                                   child: RefreshIndicator(
    //                                 onRefresh: controller.onRefreshData,
    //                                 child: ListView.separated(
    //                                     keyboardDismissBehavior:
    //                                         ScrollViewKeyboardDismissBehavior
    //                                             .onDrag,
    //                                     itemBuilder: (context, index) {
    //                                       final item = list[index];
    //                                       return (accountType ==
    //                                                   AccountType.staff ||
    //                                               accountType ==
    //                                                   AccountType.admin)
    //                                           ? _buildStaffJob(context, item)
    //                                           : _buildCustomerJob(item);
    //                                     },
    //                                     separatorBuilder: (_, __) =>
    //                                         const SizedBox(height: 10),
    //                                     itemCount: list.length),
    //                               ));
    //                             }),
    //                             SizedBox(height: 20.h),
    //                           ])),
    //                 ),
    //               ],
    //             )),
    //         Obx(() => Visibility(
    //               visible: controller.isLoading.value,
    //               child: LoadingView(),
    //             ))
    //       ],
    //     ));
  }

  Widget _buildNavigationBar(BuildContext context) {
    return (isStaff)
        ? Row(children: [
            Flexible(
                child: AppButton(
                    text: 'Xem báo cáo tổng',
                    onTap: () {
                      controller.onShowFinalReportPressed();
                    })),
            Flexible(
                child: AppButton(
                    color: AppColors.green700,
                    text: 'Xác nhận khách hàng',
                    onTap: () async {
                      final remark = await showRemarkDialog(context: context);

                      if (remark == null) return;

                      controller.onCreateReport(remark);
                    }))
          ])
        : const SizedBox.shrink();
  }

  bool get isStaff =>
      (accountType == AccountType.staff || accountType == AccountType.admin);

  String? get accountType => AuthService.to.accountType;

  ChooseProjectAppBar _buildAppBar() {
    return ChooseProjectAppBar(
      leadingIcon: Assets.images.arrowBackIcon.path,
      title: S.current.CHOOSE_JOB__TITLE,
      actions: [
        (accountType != AccountType.customer)
            ? IconButton(
                onPressed: () {
                  controller.onInstructionFilePressed();
                },
                icon: Assets.images.infoIcon.svg(
                    color: AppColors.primaryDarkColor,
                    height: 27,
                    fit: BoxFit.scaleDown))
            : const SizedBox.shrink(),
        IconButton(
            onPressed: () {
              Get.offNamedUntil(HomeView.routeName, (route) => false);
            },
            icon:
                Assets.images.homeIcon.svg(height: 30, fit: BoxFit.scaleDown)),
        SizedBox(
          width: 10,
        )
      ],
    );
  }

  Widget _buildCustomerJob(WorkingItem item) {
    return _CustomerJob(
      name: item.itemName,
      description: item.description,
      idWorkingItem: item.idWorkingItem,
      idWorkingItemStatus: item.idWorkingItemStatus,
      onImageTap: () {
        Get.toNamed(ImagesHistoryView.routeName, arguments: item);
      },
    );
  }

  Widget _buildStaffJob(BuildContext context, WorkingItem item) {
    return _StaffJob(
      onSuccessTap: () async {
        final note = await showRemarkDialog(context: context);

        if (note == null) return;

        controller.doCheck(
            item.copyWith(idWorkingItemStatus: WorkingItemStatus.success),
            note);
      },
      onFailedTap: () async {
        final note = await showRemarkDialog(context: context);

        if (note == null) return;

        controller.doCheck(
            item.copyWith(idWorkingItemStatus: WorkingItemStatus.failed), note);
      },
      onImageTap: () {
        Get.toNamed(ImagesHistoryView.routeName, arguments: item);
      },
      onCameraTap: () {
        Get.toNamed(AddImageView.routeName, arguments: item);
      },
      name: item.itemName,
      description: item.description,
      idWorkingItem: item.idWorkingItem,
      idWorkingItemStatus: item.idWorkingItemStatus,
      idWorkingItemHistory: item.idWorkingItemHistory,
    );
  }

  Future<String?> showRemarkDialog(
      {required BuildContext context,
      String? title,
      String? buttonText}) async {
    final note = await showDialog<String>(
      context: context,
      barrierDismissible: false,
      barrierColor: Colors.white.withOpacity(.4),
      builder: (BuildContext context) {
        return RemarkDialog(
          title: title,
          buttonText: buttonText,
        );
      },
    );
    return note;
  }
}

class _CustomerJob extends StatelessWidget {
  final String? idWorkingItem;
  final String? name;
  final String? idWorkingItemStatus;
  final String? description;
  final VoidCallback? onImageTap;

  const _CustomerJob({
    Key? key,
    this.idWorkingItem,
    this.name,
    this.description,
    this.idWorkingItemStatus,
    this.onImageTap,
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

  Color getTextColor(Color statusColor) {
    if (statusColor == AppColors.primaryLightColor) {
      return AppColors.textColor;
    }
    return AppColors.primaryLightColor;
  }

  @override
  Widget build(BuildContext context) {
    return Slidable(
      key: ValueKey<String?>(idWorkingItem),
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 5),
        child: AppListTile(
          color: statusColor,
          title: Text(name ?? '',
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 17.sp,
                  color: getTextColor(statusColor))),
          subTitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 15,
              ),
              Text(description ?? '',
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 16.sp,
                      color: getTextColor(statusColor))),
            ],
          ),
          contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
      endActionPane: ActionPane(
        extentRatio: 0.22,
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
                    onPressed: (_) => onImageTap!(),
                    backgroundColor: AppColors.primaryLightColor,
                    child: Assets.images.galleryIcon
                        .svg(height: 37, width: 37, fit: BoxFit.scaleDown),
                    borderRadius: BorderRadius.circular(15))
              ]),
            ),
          )
        ],
      ),
    );
  }
}

class _StaffJob extends StatelessWidget {
  final String? idWorkingItemHistory;
  final String? idWorkingItem;
  final String? name;
  final String? idWorkingItemStatus;
  final String? description;
  final VoidCallback? onTap;
  final VoidCallback? onSuccessTap;
  final VoidCallback? onFailedTap;
  final VoidCallback? onImageTap;
  final VoidCallback? onCameraTap;
  const _StaffJob(
      {Key? key,
      this.idWorkingItem,
      this.name,
      this.description,
      this.onTap,
      this.onSuccessTap,
      this.onFailedTap,
      this.idWorkingItemStatus,
      this.onImageTap,
      this.onCameraTap,
      this.idWorkingItemHistory})
      : super(key: key);

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

  Color getTextColor(Color statusColor) {
    if (statusColor == AppColors.primaryLightColor) {
      return AppColors.textColor;
    }
    return AppColors.primaryLightColor;
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
          title: Container(
            height: 20,
            child: Text(name ?? '',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 17.sp,
                    color: getTextColor(statusColor))),
          ),
          subTitle: Container(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(height: 15),
                Text(description ?? '',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 16.sp,
                        color: getTextColor(statusColor))),
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
                  onPressed: (_) => onCameraTap!()
                  // (idWorkingItemStatus != null &&
                  //         idWorkingItemHistory != null)
                  //     ? (_) => onCameraTap!()
                  //     : null
                  ,
                  backgroundColor: AppColors.primaryLightColor
                  // (idWorkingItemStatus != null &&
                  //         idWorkingItemHistory != null)
                  //     ? AppColors.primaryLightColor
                  //     : AppColors.greyBorderColor
                  ,
                  child: Assets.images.cameraIcon
                      .svg(height: 37, width: 37, fit: BoxFit.scaleDown),
                ),
                SizedBox(
                  width: .7,
                  child: Divider(
                    color: AppColors.greyBorderColor,
                  ),
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

class SendReportSuccessDialog extends StatelessWidget {
  final VoidCallback? onDownloadPressed;

  const SendReportSuccessDialog({
    this.onDownloadPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Dialog(
      insetPadding: EdgeInsets.symmetric(horizontal: 10),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Container(
        padding: EdgeInsets.all(16),
        height: 200.h,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
                child: Text("Gửi báo cáo thành công",
                    style: TextStyle(
                        fontSize: 19.sp,
                        fontWeight: FontWeight.w700,
                        color: AppColors.green700))),
            SizedBox(height: 50.h),
            Row(
              children: [
                Flexible(
                  child: AppButton(
                    borderRadius: BorderRadius.circular(10),
                    text: 'Huỷ',
                    onTap: () {
                      Get.back();
                    },
                  ),
                ),
                (onDownloadPressed != null)
                    ? const SizedBox(width: 10)
                    : const SizedBox.shrink(),
                (onDownloadPressed != null)
                    ? Flexible(
                        child: AppButton(
                          color: AppColors.green400,
                          borderRadius: BorderRadius.circular(10),
                          text: 'Download',
                          onTap: onDownloadPressed,
                        ),
                      )
                    : const SizedBox.shrink()
              ],
            )
          ],
        ),
      ),
    );
  }
}
