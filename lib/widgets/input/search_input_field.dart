import 'package:example_nav2/generated/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchInputField extends StatelessWidget {
  final String? hintText;
  final double borderRadius;
  final double contentPadding;
  final int? minLines;
  final int? maxLines;
  final Widget? suffixIcon;
  final Color? focusColor;
  final Color? fillColor;
  final Color? focusBorderColor;
  final Color? borderColor;
  final Function(String)? onChanged;
  SearchInputField({
    Key? key,
    this.hintText,
    this.borderRadius = 10,
    this.contentPadding = 20,
    this.suffixIcon,
    this.maxLines,
    this.minLines,
    this.fillColor,
    this.focusColor,
    this.focusBorderColor,
    this.borderColor,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(borderRadius),
      elevation: 5,
      child: TextFormField(
        keyboardType: TextInputType.text,
        minLines: minLines,
        maxLines: maxLines,
        onChanged: (value) {
          onChanged?.call(value);
        },
        decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: borderColor ?? Colors.white),
                borderRadius: BorderRadius.circular(borderRadius)),
            hintText: hintText,
            focusColor: focusColor ?? Colors.white,
            suffixIcon: suffixIcon ??
                Assets.images.searchIcon
                    .svg(height: 22, width: 22, fit: BoxFit.scaleDown),
            contentPadding: EdgeInsets.all(contentPadding.h),
            filled: true,
            fillColor: fillColor ?? Colors.white,
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: focusBorderColor ?? Colors.white),
                borderRadius: BorderRadius.circular(borderRadius)),
            border: OutlineInputBorder(
                borderSide: BorderSide(color: borderColor ?? Colors.white),
                borderRadius: BorderRadius.circular(borderRadius))),
      ),
    );
  }
}
