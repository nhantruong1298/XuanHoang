import 'package:example_nav2/app/modules/project/views/widgets/blur_background.dart';
import 'package:example_nav2/generated/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class BlurLayout extends StatelessWidget {
  final Widget child;
  final bool? resizeToAvoidBottomInset;
  final bool extendBodyBehindAppBar;
  final PreferredSizeWidget? appBar;
  final String? title;
  final List<Widget> actions;
  final Widget? bottomNavigationBar;
  const BlurLayout({
    super.key,
    required this.child,
    this.resizeToAvoidBottomInset = false,
    this.extendBodyBehindAppBar = false,
    this.appBar,
    this.title,
    this.actions = const <Widget>[],
    this.bottomNavigationBar,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: FocusManager.instance.primaryFocus?.unfocus,
      child: Scaffold(
        resizeToAvoidBottomInset: resizeToAvoidBottomInset,
        extendBodyBehindAppBar: extendBodyBehindAppBar,
        appBar: appBar ?? _buildAppBar(),
        bottomNavigationBar: bottomNavigationBar,
        body: Stack(
          children: [
            BlurBackGround(),
            SafeArea(
                child: Container(
              width: double.infinity,
              height: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: child,
            ))
          ],
        ),
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: IconButton(
        onPressed: () {
          Get.back();
        },
        icon: Assets.images.arrowBackIcon
            .svg(fit: BoxFit.scaleDown, width: 30, height: 30),
      ),
      centerTitle: true,
      title: Text(title ?? '',
          style: TextStyle(
              fontSize: 20.sp,
              fontWeight: FontWeight.w700,
              color: Colors.black)),
      actions: actions,
    );
  }
}
