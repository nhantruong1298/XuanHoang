import 'package:example_nav2/app/data/models/constant/working_item_status_type.dart';
import 'package:example_nav2/app/data/models/enum/account_type.dart';
import 'package:example_nav2/app/data/services/auth_service.dart';
import 'package:example_nav2/app/modules/term/views/term_view.dart';
import 'package:example_nav2/app/modules/add_image/views/add_image_view.dart';
import 'package:example_nav2/app/modules/project/views/widgets/blur_background.dart';
import 'package:example_nav2/app/modules/project/views/widgets/choose_project_app_bar.dart';
import 'package:example_nav2/app/modules/home/views/home_view.dart';
import 'package:example_nav2/app/modules/images_history.dart/controllers/images_history_controller.dart';
import 'package:example_nav2/app/modules/job/views/job_view.dart';
import 'package:example_nav2/app/modules/photo_view/photo_view.dart';
import 'package:example_nav2/app/modules/phase/choose_phase/views/choose_phase_view.dart';
import 'package:example_nav2/generated/assets.gen.dart';
import 'package:example_nav2/resources/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ImagesHistoryView extends GetView<ImageHistoryController> {
  static const String path = '/images-history';
  static const String routeName =
      '${HomeView.path}${ChoosePhaseView.path}${TermView.path}${JobView.path}$path';
  const ImagesHistoryView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        extendBodyBehindAppBar: true,
        appBar: ChooseProjectAppBar(
          leadingIcon: Assets.images.arrowBackIcon.path,
          title: 'Lịch sử',
          actions: [
            ((AuthService.to.accountType == AccountType.staff ||
                    AuthService.to.accountType == AccountType.admin)
                // && controller.workingItem.idWorkingItemStatus != null
                )
                ? IconButton(
                    onPressed: () async {
                      // if (controller.workingItem.idWorkingItemStatus != null &&
                      //     controller.workingItem.idWorkingItemHistory != null) {
                      final isUpdated = await Get.toNamed(
                          AddImageView.routeName,
                          arguments: controller.workingItem);
                      if (isUpdated == true) {
                        controller.refreshData();
                      }
                      // }
                    },
                    icon: Assets.images.cameraIcon.svg(
                      height: 30,
                      fit: BoxFit.scaleDown,
                      // color: (controller.workingItem.idWorkingItemStatus !=
                      //             null &&
                      //         controller.workingItem.idWorkingItemHistory !=
                      //             null)
                      //     ? null
                      //     : Colors.grey[600]
                    ))
                : const SizedBox.shrink(),
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
                  child: Obx(() {
                    final listHistory = controller.listHistory;
                    return SingleChildScrollView(
                      child: Column(
                        children: List.generate(listHistory.length, (index) {
                          final item = listHistory[index];
                          return (item.listImage.isNotEmpty)
                              ? Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    _TitleGridView(
                                        name: item.fullName,
                                        date: item.createDate,
                                        status: item.idWorkingItemStatus),
                                    _ImagesGridView(
                                        images: List.generate(
                                      item.listImage.length,
                                      (index) => _ImageGridViewItem(
                                          data: item.listImage[index]),
                                    ))
                                  ],
                                )
                              : const SizedBox.shrink();
                        }),
                      ),
                    );
                  })),
            ),
          ],
        ));
  }
}

class _TitleGridView extends StatelessWidget {
  final String? date;
  final String? name;
  final String status;
  const _TitleGridView({
    Key? key,
    this.date,
    this.name,
    required this.status,
  }) : super(key: key);

  Color get statusColor {
    final color = WorkingItemStatusType.items
            .firstWhereOrNull((item) => item.status == this.status)
            ?.color ??
        AppColors.primaryLightColor;

    return color;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      height: 45.h,
      width: double.infinity,
      color: Color(0xFFE9E9E9),
      child: Row(
        children: [
          Container(
            width: 14,
            decoration:
                BoxDecoration(shape: BoxShape.circle, color: statusColor),
          ),
          const SizedBox(width: 16),
          Text(
            date ?? '',
            style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w700,
                color: AppColors.primaryDarkColor),
          ),
          const Spacer(),
          Text(
            name ?? '',
            style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w700,
                color: AppColors.primaryDarkColor),
          )
        ],
      ),
    );
  }
}

class _ImagesGridView extends StatelessWidget {
  const _ImagesGridView({Key? key, this.images = const []}) : super(key: key);
  final List<_ImageGridViewItem> images;
  static const int MaxItemOfRow = 3;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, childAspectRatio: 1),
      itemCount: images.length,
      itemBuilder: (context, index) {
        return images[index];
      },

      // crossAxisCount: MaxItemOfRow,
      // children: images,
    );
  }
}

class _ImageGridViewItem extends StatelessWidget {
  final String data;
  const _ImageGridViewItem({
    Key? key,
    required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(ImageView(
          imageUrl: data,
        ));
      },
      child: Container(
        width: 40.h,
        height: 40.h,
        color: Colors.white,
        child: Image.network(
          data,
          fit: BoxFit.cover,
          loadingBuilder: (context, child, loadingProgress) {
            return (loadingProgress != null)
                ? Container(
                    width: double.infinity,
                    height: double.infinity,
                    color: AppColors.primaryLightColor,
                    child: Center(
                      child: CircularProgressIndicator(
                        color: AppColors.errorColor,
                      ),
                    ),
                  )
                : child;
          },
        ),
      ),
    );
  }
}
