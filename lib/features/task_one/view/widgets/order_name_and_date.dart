import 'package:flutter/material.dart';
import 'package:flutter_task_example/core/theme/text_styles.dart';

class OrderTitleAndSupTitle extends StatelessWidget {
  final String title;
  final String supTitle;
  const OrderTitleAndSupTitle({
    super.key,
    required this.title,
    required this.supTitle,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 180,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            title,
            style: TextStyles.font20Black400w,
          ),
          Text(
            supTitle,
            style: TextStyles.font14DarkGray400w,
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
          ),
        ],
      ),
    );
  }
}
