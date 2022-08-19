import 'package:example_nav2/resources/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void showSnackbar({
  String? message,
  String? title,
  EdgeInsets? padding,
  Color backgroundColor = AppColors.primaryLightColor,
  Duration duration = const Duration(milliseconds: 2000),
}) {
  Get.showSnackbar(GetSnackBar(
    message: message,
    title: title,
    padding:
        padding ?? EdgeInsets.only(left: 16, right: 16, bottom: 16, top: 16),
    backgroundColor: backgroundColor,
    duration: Duration(milliseconds: 1500),
    snackStyle: SnackStyle.GROUNDED,
    margin: EdgeInsets.zero,
    snackPosition: SnackPosition.TOP,
  ));
}
