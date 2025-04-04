import 'package:flutter/material.dart';

import 'package:flutter_task_example/core/theme/text_styles.dart';
import 'package:flutter_task_example/core/widgets/app_button_with_icon.dart';
import 'package:flutter_task_example/features/task_one/view/widgets/user_avatar_image.dart';

class UserInfoWidget extends StatelessWidget {
  final String topImage;
  final String backImage;
  final String? title;
  final String name;
  final String supTitle;
  final String icon;
  final Color backgroundColor;
  const UserInfoWidget({
    super.key,
    required this.topImage,
    required this.backImage,
    this.title,
    required this.name,
    required this.supTitle,
    required this.icon,
    required this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        UserAvatarImage(
          topImage: topImage,
          backImage: backImage,
        ),
        const SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            title == null
                ? const SizedBox()
                : Text(
                    title!,
                    style: TextStyles.font11MainGray400w,
                  ),
            Text(
              name,
              style: TextStyles.font14Black400w,
            ),
            AppButtonWithIcon(
              title: supTitle,
              iconPath: icon,
              titleStyle: TextStyles.font10White400w,
              backgroundColor: backgroundColor,
              iconHeight: 15,
              iconWidget: 15,
              minWidth: 30,
              height: 20,
              onPressed: () {},
            ),
          ],
        ),
      ],
    );
  }
}
