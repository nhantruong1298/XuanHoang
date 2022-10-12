import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:loading_indicator/loading_indicator.dart';

class RootController extends GetxController {
  OverlayState? overlayState;
  OverlayEntry? overlayEntry;

  void init(BuildContext context) {
    overlayState = Overlay.of(context);
  }

  showLoadingDialog() {
    overlayEntry = OverlayEntry(builder: (context) {
      return Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
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
      );
    });

    overlayState?.insert(overlayEntry!);
  }

  hideLoadingDialog() {
    try {
      overlayEntry?.remove();
    } catch (_) {}
  }
  // final GlobalKey navigatorKey = GlobalKey<NavigatorState>();

  // @override
  // void onInit() {
  //   super.onInit();
  // }

  // @override
  // void onReady() {
  //   super.onReady();
  // }

  // @override
  // void onClose() {}
}
