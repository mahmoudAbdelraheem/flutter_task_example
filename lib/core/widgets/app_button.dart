import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final String text;
  final TextStyle textStyle;
  final Color backgroundColor;
  final VoidCallback onPressed;
  const AppButton({
    super.key,
    required this.text,
    required this.textStyle,
    required this.backgroundColor,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4),
      ),
      color: backgroundColor,
      minWidth: 150,
      height: 41,
      child: Text(
        text,
        style: textStyle,
      ),
    );
  }
}
