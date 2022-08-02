import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppButton extends StatelessWidget {
  final String? text;
  final Color? color;
  final VoidCallback? onTap;
  final BorderRadius? borderRadius;
  final List<BoxShadow>? boxShadow;
  const AppButton(
      {Key? key,
      this.text,
      this.color = const Color(0xFFFF5D5D),
      this.onTap,
      this.borderRadius,
      this.boxShadow = const [
        BoxShadow(
            offset: Offset(0, 7),
            blurRadius: 20,
            spreadRadius: 5,
            color: Color.fromRGBO(246, 106, 104, 0.36))
      ]})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(boxShadow: boxShadow),
      child: SizedBox(
        width: double.infinity,
        height: 65.h,
        child: ClipRRect(
          borderRadius: borderRadius ?? BorderRadius.zero,
          child: Material(
            color: color,
            child: InkWell(
                onTap: onTap,
                child: Center(
                    child: Text(
                  text ?? '',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w700),
                ))),
          ),
        ),
      ),
    );
  }
}
