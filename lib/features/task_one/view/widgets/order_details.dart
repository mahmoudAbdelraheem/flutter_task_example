import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_task_example/features/task_one/view/widgets/order_name_and_date.dart';

class OrderDetails extends StatelessWidget {
  const OrderDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const OrderTitleAndSupTitle(
            title: 'تفاصيل المنتج/خدمه',
            supTitle: 'محتاج ايفون ١٦ برو ٢٥٦ جيجا لون ازرق يكون جديد',
          ),
          Container(
            width: 56,
            height: 56,
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withValues(
                      alpha: 0.2,
                    ),
                    blurRadius: 4,
                    spreadRadius: 2,
                    offset: const Offset(0, 4),
                  )
                ]),
            child: SvgPicture.asset(
              'assets/images/svgs/chat_icon.svg',
              width: 33,
              height: 27,
            ),
          ),
        ],
      ),
    );
  }
}
