import 'package:example_nav2/app/modules/choose_project/views/widgets/blur_background.dart';
import 'package:example_nav2/app/modules/home/views/home_view.dart';
import 'package:example_nav2/app/modules/progress/choose_progress/views/choose_progress_view.dart';
import 'package:example_nav2/widgets/common/app_list_tile.dart';
import 'package:example_nav2/widgets/input/text_input_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class ChooseProjectView extends StatelessWidget {
  static const String routeName = '${HomeView.path}$path';
  static const String path = '/choose-project';
  const ChooseProjectView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        extendBodyBehindAppBar: true,
        appBar: _buildAppBar(),
        body: Stack(
          children: [
            const BlurBackGround(),
            SafeArea(
              child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 30.h),
                        TextInputField(
                          borderRadius: 25,
                          contentPadding: 20,
                          suffixIcon: Icon(
                            Icons.search,
                            color: Color(0xFFC0C0C0),
                            size: 22,
                          ),
                        ),
                        SizedBox(height: 20.h),
                        _ProjectItem()
                      ])),
            ),
          ],
        ));
  }

  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset('assets/images/back-icon.svg',
            height: 29, fit: BoxFit.scaleDown),
        onPressed: () {
          Get.toNamed(HomeView.routeName);
        },
      ),
      centerTitle: true,
      title: Text('Chọn dự án',
          style: TextStyle(
              fontSize: 27.sp,
              fontWeight: FontWeight.w700,
              color: Colors.black)),
      actions: [
        SvgPicture.asset('assets/images/key-icon.svg',
            height: 29, fit: BoxFit.scaleDown),
        SizedBox(width: 10.w)
      ],
    );
  }
}

class _ProjectItem extends StatelessWidget {
  const _ProjectItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppListTile(
      onTap: () {
        Get.toNamed(ChooseProgressView.routeName);
      },
      contentPadding: const EdgeInsets.symmetric(vertical: 5, horizontal: 16),
      borderRadius: BorderRadius.circular(15),
      title: Text('Toà nhà công đoàn cao su',
          style: TextStyle(fontSize: 17.sp, fontWeight: FontWeight.w700)),
      subTitle: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        SizedBox(height: 16.h),
        Row(
          children: [
            SvgPicture.asset('assets/images/location-icon.svg',
                height: 13, fit: BoxFit.scaleDown),
            SizedBox(width: 8.w),
            Text('229 Hoàng Văn Thụ, F8, PN',
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16.sp)),
            SizedBox(width: 8.w),
          ],
        )
      ]),
    );
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(15)),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text('Toà nhà công đoàn cao su',
            style: TextStyle(fontSize: 17.sp, fontWeight: FontWeight.w700)),
        SizedBox(height: 16.h),
        Row(
          children: [
            SvgPicture.asset('assets/images/location-icon.svg',
                height: 13, fit: BoxFit.scaleDown),
            SizedBox(width: 8.w),
            Text('229 Hoàng Văn Thụ, F8, PN',
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16.sp)),
            SizedBox(width: 8.w),
          ],
        )
      ]),
    );
  }
}
