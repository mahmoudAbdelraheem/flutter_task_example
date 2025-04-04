import 'package:flutter/material.dart';

class AppDivider extends StatelessWidget {
  final Color color;
  final double margin;
  const AppDivider({super.key, required this.color, this.margin = 20});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: margin),
      color: color,
      height: 1,
      width: double.infinity,
    );
  }
}
