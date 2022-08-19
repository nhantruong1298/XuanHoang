import 'package:example_nav2/resources/app_colors.dart';
import 'package:example_nav2/resources/app_dimensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

Future<ImageSource?> chooseImageBottomSheet() async {
  final result = await Get.bottomSheet<ImageSource>(
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
                  Get.back(result: ImageSource.gallery);
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
                  Get.back(result: ImageSource.camera);
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

  return result;
}
