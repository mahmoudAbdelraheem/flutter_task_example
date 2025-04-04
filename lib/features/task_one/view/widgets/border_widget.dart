import 'package:flutter/material.dart';
import 'package:flutter_task_example/core/theme/app_colors.dart';

class BorderWidget extends StatelessWidget {
  const BorderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 77,
      width: 16,
      decoration: const BoxDecoration(
        border: Border(
          right: BorderSide(
            width: 3,
            color: AppColors.darkBlue,
          ),
          top: BorderSide(
            width: 3,
            color: AppColors.yellowColor,
          ),
          bottom: BorderSide(
            width: 3,
            color: AppColors.darkBlue,
          ),
        ),
      ),
    );
  }
}
