import 'package:flutter/material.dart';
import 'package:flutter_task_example/core/theme/app_colors.dart';
import 'package:flutter_task_example/core/theme/text_styles.dart';
import 'package:flutter_task_example/core/widgets/app_button_with_icon.dart';
import 'package:flutter_task_example/core/widgets/back_icon_button.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      height: 63,
      color: AppColors.appBarBackground,
      width: double.infinity,
      child: Row(
        children: [
          const BackIconButton(),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AppButtonWithIcon(
                  title: 'بيع',
                  iconPath: 'assets/images/svgs/ep_sell.svg',
                  titleStyle: TextStyles.font20White400w,
                  backgroundColor: AppColors.yellowColor,
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
