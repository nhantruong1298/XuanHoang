import 'package:flutter/material.dart';

class AppListTile extends StatelessWidget {
  final Widget? title;
  final Widget? trailing;
  final Widget? subTitle;
  final EdgeInsets? contentPadding;
  final Color? color;
  final VoidCallback? onTap;
  final BorderRadius? borderRadius;

  const AppListTile({
    Key? key,
    this.title,
    this.trailing,
    this.contentPadding,
    this.color,
    this.onTap,
    this.borderRadius,
    this.subTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: borderRadius,
      child: Material(
        borderRadius: borderRadius,
        color: color ?? Colors.white,
        child: ListTile(
          onTap: onTap,
          contentPadding: contentPadding,
          title: title,
          subtitle: subTitle,
          trailing: trailing,
        ),
      ),
    );
  }
}
