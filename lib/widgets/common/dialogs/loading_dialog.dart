import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loading_indicator/loading_indicator.dart';

class LoadingDialog extends StatelessWidget {
  final String title;
  const LoadingDialog({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      insetPadding: EdgeInsets.symmetric(horizontal: 10),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
      actionsPadding: EdgeInsets.only(left: 16, right: 16, bottom: 32),
      titlePadding: EdgeInsets.only(top: 20),
      title: Center(
          child: Text(
        title,
        style: TextStyle(
          fontSize: 19.sp,
          fontWeight: FontWeight.w700,
        ),
      )),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 100.h,
            child: LoadingIndicator(
                indicatorType: Indicator.ballSpinFadeLoader,
                colors: const [Colors.black],
                strokeWidth: 2,
                backgroundColor: Colors.white),
          ),
          SizedBox(
            width: ScreenUtil.defaultSize.width,
          )
        ],
      ),
    );
  }
}
