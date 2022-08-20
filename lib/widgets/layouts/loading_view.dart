import 'package:example_nav2/resources/app_colors.dart';
import 'package:flutter/material.dart';

class LoadingView extends StatelessWidget {
  const LoadingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: AppColors.primaryDarkColor.withOpacity(.6),
      child: Center(
          child: CircularProgressIndicator(
        color: AppColors.errorColor,
      )),
    );
  }
}
