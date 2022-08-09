import 'package:example_nav2/app/modules/choose_category/views/choose_category_view.dart';
import 'package:example_nav2/app/modules/choose_job/views/choose_job_view.dart';
import 'package:example_nav2/app/modules/choose_project/views/widgets/blur_background.dart';
import 'package:example_nav2/app/modules/choose_project/views/widgets/choose_project_app_bar.dart';
import 'package:example_nav2/app/modules/home/views/home_view.dart';
import 'package:example_nav2/app/modules/progress/choose_progress/views/choose_progress_view.dart';
import 'package:example_nav2/generated/assets.gen.dart';
import 'package:example_nav2/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ImagesHistory extends StatelessWidget {
  static const String path = '/images-history';
  static const String routeName =
      '${HomeView.path}${ChooseProgressView.path}${ChooseCategoryView.path}${ChooseJobView.path}$path';
  const ImagesHistory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        extendBodyBehindAppBar: true,
        appBar: ChooseProjectAppBar(
          leadingIcon: Assets.images.arrowBackIcon.path,
          title: S.current.CHOOSE_IMAGE__LOOK_PHOTOS,
          actions: [
            IconButton(
                onPressed: () {
                  Get.offNamedUntil(HomeView.routeName, (route) => false);
                },
                icon: Assets.images.cameraIcon
                    .svg(height: 30, fit: BoxFit.scaleDown)),
            IconButton(
                onPressed: () {},
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
                  child: ImageGridView(
                      images:
                          List.generate(5, (index) => ImageGridViewItem()))),
            ),
          ],
        ));
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
  const ImageGridViewItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40.h,
      height: 40.h,
      padding: EdgeInsets.all(1),
      color: Colors.white,
      child: Assets.images.bgLoginPng.image(fit: BoxFit.fill),
    );
  }
}
