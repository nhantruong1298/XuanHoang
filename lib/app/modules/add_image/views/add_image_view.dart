
import 'package:example_nav2/app/modules/choose_category/views/choose_category_view.dart';
import 'package:example_nav2/app/modules/add_image/controllers/add_image_controller.dart';
import 'package:example_nav2/app/modules/choose_job/views/choose_job_view.dart';
import 'package:example_nav2/app/modules/choose_project/views/widgets/blur_background.dart';
import 'package:example_nav2/app/modules/choose_project/views/widgets/choose_project_app_bar.dart';
import 'package:example_nav2/app/modules/home/views/home_view.dart';
import 'package:example_nav2/app/modules/progress/choose_progress/views/choose_progress_view.dart';
import 'package:example_nav2/generated/assets.gen.dart';
import 'package:example_nav2/resources/app_colors.dart';
import 'package:example_nav2/resources/app_dimensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class AddImageView extends GetView<AddImageController> {
  static const String path = '/choose-image';
  static const String routeName =
      '${HomeView.path}${ChooseProgressView.path}${ChooseTermView.path}${ChooseJobView.path}$path';
  const AddImageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: true,
        extendBodyBehindAppBar: true,
        floatingActionButton: _ChooseImageButton(),
        appBar: ChooseProjectAppBar(
          leading: IconButton(
            onPressed: () {
              Get.back(result: controller.isUpdated);
            },
            icon: SvgPicture.asset(Assets.images.arrowBackIcon.path,
                height: 30, width: 30, fit: BoxFit.scaleDown),
          ),
          title: 'Thêm Ảnh',
          actions: _buildActions,
        ),
        body: Stack(
          children: [
            BlurBackGround(),
            SafeArea(
              child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  child: Column(
                    children: [
                      const SizedBox(height: 30),
                      Obx(() {
                        final listImage = controller.listImage;
                        return Expanded(
                          child: ImageGridView(
                              images: List.generate(
                                  listImage.length,
                                  (index) => ImageGridViewItem(
                                      data: listImage[index]))),
                        );
                      })
                    ],
                  )),
            ),
          ],
        ));
  }

  List<Widget> get _buildActions {
    return [
      IconButton(
          onPressed: () {
            Get.offNamedUntil(HomeView.routeName, (route) => false);
          },
          icon: Assets.images.homeIcon.svg(height: 30, fit: BoxFit.scaleDown)),
      const SizedBox(width: 10)
    ];
  }
}

class _ChooseImageButton extends GetView<AddImageController> {
  const _ChooseImageButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(50),
      child: Material(
        color: Color(0xFFD9D9D9),
        child: InkWell(
          onTap: () async {
            await showBottomSheet();
          },
          child: Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
            ),
            child:
                Assets.images.cameraIcon.svg(height: 30, fit: BoxFit.scaleDown),
          ),
        ),
      ),
    );
  }

  Future<void> showBottomSheet() async {
    Get.bottomSheet(
        ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15),
            topRight: Radius.circular(15),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(height: 10),
              Material(
                color: AppColors.primaryLightColor,
                child: InkWell(
                  onTap: () async {
                    Get.back();
                    await controller.pickImage(ImageSource.gallery);
                  },
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: AppDimensions.defaultPadding, vertical: 30),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '1. Chọn ảnh từ thư viện',
                            style: TextStyle(
                                fontSize: 16.sp,
                                color: AppColors.primaryDarkColor,
                                fontWeight: FontWeight.w400),
                          )
                        ]),
                  ),
                ),
              ),
              Material(
                color: AppColors.primaryLightColor,
                child: InkWell(
                  onTap: () async {
                    Get.back();
                    await controller.pickImage(ImageSource.camera);
                  },
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: AppDimensions.defaultPadding, vertical: 30),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '2. Chụp ảnh',
                            style: TextStyle(
                                fontSize: 16.sp,
                                color: AppColors.primaryDarkColor,
                                fontWeight: FontWeight.w400),
                          )
                        ]),
                  ),
                ),
              ),
              const SizedBox(height: 30)
            ],
          ),
        ),
        backgroundColor: AppColors.primaryLightColor,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
          topLeft: Radius.circular(15),
          topRight: Radius.circular(15),
        )));
  }
}

class ImageGridView extends StatelessWidget {
  const ImageGridView({Key? key, this.images = const []}) : super(key: key);
  final List<ImageGridViewItem> images;
  static const int MaxItemOfRow = 3;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
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

class ImageGridViewItem extends StatelessWidget {
  final String data;
  const ImageGridViewItem({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 145.h,
      padding: EdgeInsets.all(1),
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
    );
  }
}
