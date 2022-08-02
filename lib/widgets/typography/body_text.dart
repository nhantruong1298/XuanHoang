import 'package:flutter/material.dart';

class BodyText extends StatelessWidget {
  final String? data;
  final Color? color;
  final TextStyle? style;
  final TextAlign textAlign;
  final int? maxLines;
  final TextOverflow? overflow;
  final TextStyle? fallbackStyle;
  const BodyText(this.data,
      {Key? key,
      this.style,
      this.color,
      this.textAlign = TextAlign.left,
      this.overflow,
      this.maxLines,
      this.fallbackStyle})
      : super(key: key);

  static TextStyle get defaultStyle =>
      const TextStyle(color: Colors.black, height: 1.5);

  TextStyle getTextStyle(Color? color, TextStyle? style) {
    TextStyle mergedStyle;
    var clonedStyle = (fallbackStyle ?? defaultStyle).copyWith();
    mergedStyle = (style != null) ? clonedStyle.merge(style) : clonedStyle;

    if (color != null) {
      mergedStyle = mergedStyle.copyWith(color: color);
    }
    return mergedStyle;
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      data ?? '',
      key: key,
      style: getTextStyle(color, style),
      maxLines: maxLines,
      overflow: overflow,
      textAlign: textAlign,
    );
  }
}
