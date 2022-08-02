import 'package:example_nav2/generated/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ChooseProjectAppBar extends StatelessWidget implements PreferredSize {
  final String? leadingIcon;
  final double? leadingSize;
  final String? title;
  final double? titleSize;
  final List<Widget>? actions;
  final double? height;
  ChooseProjectAppBar(
      {Key? key,
      this.leadingIcon,
      this.leadingSize = 30,
      this.titleSize,
      this.title,
      this.actions = const [],
      this.height = 50})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: Size(double.infinity, 60.h),
      child: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: SvgPicture.asset(leadingIcon!,
              height: leadingSize, width: leadingSize, fit: BoxFit.scaleDown),
        ),
        centerTitle: true,
        title: Text(title ?? '',
            style: TextStyle(
                fontSize: titleSize ?? 20.sp,
                fontWeight: FontWeight.w700,
                color: Colors.black)),
        actions: actions,
      ),
    );
  }

  @override
  Widget get child => this;

  @override
  Size get preferredSize => Size(double.infinity, height!);
}
