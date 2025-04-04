import 'package:flutter/material.dart';
import 'package:flutter_task_example/core/theme/app_colors.dart';
import 'package:flutter_task_example/core/theme/text_styles.dart';

class OrderQuantity extends StatelessWidget {
  final int quantity;
  const OrderQuantity({super.key, required this.quantity});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      height: 30,
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      padding: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: AppColors.lightBlue,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          const Text(
            'الكميه',
            style: TextStyles.font16Black400w,
          ),
          Expanded(
            child: Text(
              quantity.toString(),
              style: TextStyles.font16Black400w,
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
