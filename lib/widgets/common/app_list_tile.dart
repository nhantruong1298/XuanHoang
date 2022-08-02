import 'package:example_nav2/resources/app_constants.dart';
import 'package:flutter/material.dart';

class AppListTile extends StatelessWidget {
  final Widget? title;
  final Widget? trailing;
  final Widget? subTitle;
  final EdgeInsets? contentPadding;
  final Color? color;
  final VoidCallback? onTap;
  final BorderRadius? borderRadius;
  final List<BoxShadow>? boxShadow;

  const AppListTile({
    Key? key,
    this.title,
    this.trailing,
    this.contentPadding,
    this.color,
    this.onTap,
    this.borderRadius,
    this.subTitle,
    this.boxShadow,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: boxShadow ?? [AppConstants.defaultBoxShadow],
        borderRadius: borderRadius,
      ),
      child: ClipRRect(
        borderRadius: borderRadius,
        child: Material(
          color: color ?? Colors.white,
          child: InkWell(
            onTap: onTap,
            child: Padding(
              padding: contentPadding ?? EdgeInsets.zero,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          title ?? const SizedBox.shrink(),
                          subTitle ?? const SizedBox.shrink()
                        ],
                      ),
                    ),
                    trailing ?? const SizedBox.shrink()
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}
