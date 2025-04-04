import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_task_example/core/theme/app_colors.dart';
import 'package:flutter_task_example/core/theme/text_styles.dart';

class BuildAdditionalInfoItem extends StatelessWidget {
  final String icon;
  final String title;
  final String subtitle;
  const BuildAdditionalInfoItem({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 40,
          height: 40,
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            color: AppColors.lighterGray,
            borderRadius: BorderRadius.circular(3),
          ),
          child: SvgPicture.asset(
            icon,
            width: 24,
            height: 24,
            color: AppColors.mainBlue,
          ),
        ),
        const SizedBox(width: 10),
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyles.font14Black400w,
            ),
            Text(
              subtitle,
              style: TextStyles.font11Black400w,
            ),
          ],
        ),
      ],
    );
  }
}
