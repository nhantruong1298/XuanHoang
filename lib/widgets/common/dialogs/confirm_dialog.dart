import 'package:example_nav2/resources/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void showConfirmDialog(
    {String? title,
    String? textConfirm,
    String? textCancel,
    Function()? onCancel,
    Function()? onConfirm,
    Widget? content}) {
  Get.defaultDialog(
    titlePadding: EdgeInsets.all(16),
    contentPadding: EdgeInsets.all(16),
    barrierDismissible: false,
    title: title ?? '',
    radius: 15,
    textConfirm: textConfirm,
    textCancel: textCancel,
    backgroundColor: AppColors.primaryLightColor,
    onCancel: onCancel,
    onConfirm: onConfirm,
    content: content ?? const SizedBox.shrink(),
    confirmTextColor: AppColors.primaryLightColor,
  );
}
