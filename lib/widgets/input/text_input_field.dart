import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextInputField extends StatelessWidget {
  final String name;
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
  final double? elevation;
  final String obscuringCharacter;
  final bool obscureText;
  final String? initValue;
  final Widget? suffix;
  final Function(String?)? onChanged;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  TextInputField(
      {Key? key,
      this.hintText,
      this.borderRadius = 10,
      this.contentPadding = 20,
      this.suffixIcon,
      this.maxLines = 1,
      this.minLines = 1,
      this.fillColor,
      this.focusColor,
      this.focusBorderColor,
      this.borderColor,
      this.elevation,
      this.name = '',
      this.obscuringCharacter = '•',
      this.obscureText = false,
      this.initValue,
      this.onChanged,
      this.controller,
      this.validator,
      this.suffix})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(borderRadius),
      child: Material(
        borderRadius: BorderRadius.circular(borderRadius),
        elevation: 5,
        child: FormBuilderField(
          initialValue: initValue,
          onChanged: (String? value) {
            onChanged?.call(value ?? '');
          },
          name: name,
          builder: (field) {
            return TextFormField(
              initialValue: initValue,
              keyboardType: TextInputType.text,
              onChanged: (value) {
                field.didChange(value);
              },
              controller: controller,
              minLines: minLines,
              maxLines: maxLines,
              obscuringCharacter: obscuringCharacter,
              obscureText: obscureText,
              decoration: InputDecoration(
                  suffix: suffix,
                  errorBorder: InputBorder.none,
                  //errorText: '',
                  errorStyle: TextStyle(
                    color: Colors.transparent,
                    fontSize: 0,
                  ),
                  focusedErrorBorder: InputBorder.none,
                  enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: borderColor ?? Colors.white),
                      borderRadius: BorderRadius.circular(borderRadius)),
                  hintText: hintText,
                  focusColor: focusColor ?? Colors.white,
                  suffixIcon: suffixIcon,
                  contentPadding: EdgeInsets.all(contentPadding.h),
                  filled: true,
                  fillColor: fillColor ?? Colors.white,
                  focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: focusBorderColor ?? Colors.white),
                      borderRadius: BorderRadius.circular(borderRadius)),
                  border: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: borderColor ?? Colors.white),
                      borderRadius: BorderRadius.circular(borderRadius))),
            );
          },
          validator: validator,
        ),
      ),
    );
  }
}
