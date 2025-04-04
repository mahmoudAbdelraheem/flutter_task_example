import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AppButtonWithIcon extends StatelessWidget {
  final String title;
  final String iconPath;
  final TextStyle titleStyle;
  final Color backgroundColor;
  final VoidCallback onPressed;
  final double? iconWidget;
  final double? iconHeight;
  final double? minWidth;
  final double? height;

  const AppButtonWithIcon({
    super.key,
    required this.title,
    required this.iconPath,
    required this.titleStyle,
    required this.backgroundColor,
    required this.onPressed,
    this.iconWidget,
    this.iconHeight,
    this.minWidth,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      elevation: 0,
      splashColor: Colors.transparent,
      minWidth: minWidth ?? 90,
      height: height ?? 41,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          4,
        ),
      ),
      color: backgroundColor,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          SvgPicture.asset(
            iconPath,
            width: iconWidget ?? 22,
            height: iconHeight ?? 22,
            fit: BoxFit.contain,
          ),
          const SizedBox(
            width: 5,
          ),
          Text(
            title,
            style: titleStyle,
          ),
        ],
      ),
    );
  }
}
