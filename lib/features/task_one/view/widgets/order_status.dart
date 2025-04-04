import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_task_example/core/theme/app_colors.dart';
import 'package:flutter_task_example/core/theme/text_styles.dart';
import 'package:flutter_task_example/features/task_one/view/widgets/order_name_and_date.dart';

class OrderStatus extends StatelessWidget {
  const OrderStatus({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 30),
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const OrderTitleAndSupTitle(
            title: 'ايفون 16 -256 جيجا',
            supTitle: 'الخميس،07 نوفامبر 2024',
          ),
          //! order status
          Row(
            children: [
              const Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'حاله البيع',
                    style: TextStyles.font12DarkGray400w,
                  ),
                  Text(
                    'نشط',
                    style: TextStyles.font12MainBlue400w,
                  ),
                ],
              ),
              const SizedBox(width: 10),
              Container(
                padding: const EdgeInsets.all(10),
                width: 52,
                height: 52,
                decoration: const BoxDecoration(
                  color: AppColors.mainBlue,
                  shape: BoxShape.circle,
                ),
                child: SvgPicture.asset(
                  'assets/images/svgs/order_icon.svg',
                  width: 28,
                  height: 28,
                  fit: BoxFit.contain,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
