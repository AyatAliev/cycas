import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final EdgeInsetsGeometry? padding;

  final double titleSpacing;
  final double toolbarHeight;
  final Widget? leading;
  final Widget title;
  final bool titleCenter;
  final Widget? trailing;

  const CustomAppBar(
      {Key? key, this.padding, this.leading, this.trailing, required this.title, this.titleCenter = true, this.toolbarHeight = kToolbarHeight, this.titleSpacing = 0})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      height: toolbarHeight,
      child: NavigationToolbar(
        leading: leading,
        middle: title,
        trailing: trailing,
        centerMiddle: titleCenter,
        middleSpacing: titleSpacing,
      ),
    );
  }
}