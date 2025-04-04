import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_task_example/core/helpers/constants.dart';
import 'package:flutter_task_example/core/theme/app_colors.dart';
import 'package:flutter_task_example/core/theme/text_styles.dart';

class BuildStepWidget extends StatelessWidget {
  final int index;
  final bool isCompleted;
  final bool isActive;

  const BuildStepWidget({
    super.key,
    required this.index,
    required this.isCompleted,
    required this.isActive,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              if (index != 0)
                Expanded(
                  child: Container(
                    height: 2,
                    color:
                        isCompleted ? AppColors.darkGray : AppColors.lightGray,
                  ),
                ),
              CircleAvatar(
                backgroundColor: isActive
                    ? AppColors.mainBlue
                    : isCompleted
                        ? AppColors.darkGray
                        : AppColors.lightGray,
                radius: 17,
                child: Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: SvgPicture.asset(
                    Constants.stepperIconsPath[index],
                    width: 26,
                    height: 26,
                    theme: SvgTheme(
                      currentColor: isActive || isCompleted
                          ? Colors.white
                          : Colors.black38,
                    ),
                  ),
                ),
              ),
              if (index != Constants.stepperIconsPath.length - 1)
                Expanded(
                  child: Container(
                    height: 2,
                    color:
                        isCompleted ? AppColors.darkGray : AppColors.lightGray,
                  ),
                ),
            ],
          ),
          const SizedBox(height: 6),
          Align(
            alignment: index == 0
                ? Alignment.centerRight
                : index == Constants.stepperIconsPath.length - 1
                    ? Alignment.centerLeft
                    : Alignment.center,
            child: Text(
              Constants.stepperlabels[index],
              style: TextStyles.font9LightGray400w.copyWith(
                color: isActive
                    ? Colors.blue
                    : isCompleted
                        ? AppColors.darkGray
                        : AppColors.lightGray,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
