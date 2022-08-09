import 'package:example_nav2/widgets/typography/body_text.dart';
import 'package:flutter/material.dart';

class Heading1Text extends BodyText {
  static TextStyle get defaultStyle => TextStyle(
      color: Colors.black,
      fontSize: 32,
      fontWeight: FontWeight.w700,
      letterSpacing: -0.01,
      height: 1.5);

  Heading1Text(
    String? data, {
    Key? key,
    TextStyle? style,
    Color? color,
    TextAlign textAlign = TextAlign.left,
    TextOverflow? overflow,
    int? maxLines,
  }) : super(data,
            fallbackStyle: defaultStyle,
            key: key,
            color: color,
            maxLines: maxLines,
            overflow: overflow,
            style: style,
            textAlign: textAlign);
}

class Heading2Text extends BodyText {
  static TextStyle get defaultStyle => TextStyle(
      color: Colors.black,
      fontSize: 22,
      fontWeight: FontWeight.w400,
      letterSpacing: -0.01,
      height: 1.5);

  Heading2Text(
    String? data, {
    Key? key,
    TextStyle? style,
    Color? color,
    TextAlign textAlign = TextAlign.left,
    TextOverflow? overflow,
    int? maxLines,
  }) : super(data,
            fallbackStyle: defaultStyle,
            key: key,
            color: color,
            maxLines: maxLines,
            overflow: overflow,
            style: style,
            textAlign: textAlign);
}
