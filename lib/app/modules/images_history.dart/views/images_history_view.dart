import 'package:example_nav2/app/data/models/enum/account_type.dart';
import 'package:example_nav2/app/data/services/auth_service.dart';
import 'package:example_nav2/app/modules/choose_category/views/choose_category_view.dart';
import 'package:example_nav2/app/modules/add_image/views/add_image_view.dart';
import 'package:example_nav2/app/modules/choose_job/views/choose_job_view.dart';
import 'package:example_nav2/app/modules/choose_project/views/widgets/blur_background.dart';
import 'package:example_nav2/app/modules/choose_project/views/widgets/choose_project_app_bar.dart';
import 'package:example_nav2/app/modules/home/views/home_view.dart';
import 'package:example_nav2/app/modules/images_history.dart/controllers/images_history_controller.dart';
import 'package:example_nav2/app/modules/photo_view/photo_view.dart';
import 'package:example_nav2/app/modules/progress/choose_progress/views/choose_progress_view.dart';
import 'package:example_nav2/generated/assets.gen.dart';
import 'package:example_nav2/generated/l10n.dart';
import 'package:example_nav2/resources/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ImagesHistoryView extends GetView<ImageHistoryController> {
  static const String path = '/images-history';
  static const String routeName =
      '${HomeView.path}${ChooseProgressView.path}${ChooseTermView.path}${ChooseJobView.path}$path';
  const ImagesHistoryView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        extendBodyBehindAppBar: true,
        appBar: ChooseProjectAppBar(
          leadingIcon: Assets.images.arrowBackIcon.path,
          title: S.current.CHOOSE_IMAGE__LOOK_PHOTOS,
          actions: [
            ((AuthService.to.accountType == AccountType.staff ||
                        AuthService.to.accountType == AccountType.admin) &&
                    controller.workingItem.idWorkingItemStatus != null)
                ? IconButton(
                    onPressed: () async {
                      final isUpdated = await Get.toNamed(
                          AddImageView.routeName,
                          arguments: controller.idWorkingItem);
                      if (isUpdated == true) {
                        controller.refreshData();
                      }
                    },
                    icon: Assets.images.cameraIcon
                        .svg(height: 30, fit: BoxFit.scaleDown))
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
                          final listImage = listHistory[index].listImage;
                          return (listImage.isNotEmpty)
                              ? Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    _TitleGridView(
                                      name: listHistory[index].fullName,
                                      date: listHistory[index].fullName,
                                    ),
                                    _ImagesGridView(
                                        images: List.generate(
                                      listImage.length,
                                      (index) => _ImageGridViewItem(
                                          data: listImage[index]),
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
  const _TitleGridView({Key? key, this.date, this.name}) : super(key: key);

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
            decoration: BoxDecoration(
                shape: BoxShape.circle, color: AppColors.errorColor),
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
