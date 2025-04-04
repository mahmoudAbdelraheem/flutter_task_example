import 'package:flutter/material.dart';
import 'package:flutter_task_example/core/helpers/constants.dart';
import 'package:flutter_task_example/core/theme/app_colors.dart';
import 'package:flutter_task_example/core/theme/text_styles.dart';
import 'package:flutter_task_example/core/widgets/app_button.dart';
import 'package:flutter_task_example/core/widgets/app_divider.dart';
import 'package:flutter_task_example/features/task_one/view/widgets/lable_and_price_widget.dart';

class OrderPaymentDetailsAndButtons extends StatelessWidget {
  const OrderPaymentDetailsAndButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          child: Text(
            'رسوم الدفع و التفاصيل',
            style: TextStyles.font20Black400w,
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          decoration: BoxDecoration(
            color: AppColors.darkBlue.withValues(
              alpha: 0.17,
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ...List.generate(Constants.paymentDetails.length, (index) {
                return LableAndPriceWidget(
                  lable: Constants.paymentDetails[index]['lable'],
                  price: Constants.paymentDetails[index]['price'],
                );
              }),
              const SizedBox(height: 5),
              const AppDivider(
                color: Colors.white,
                margin: 0,
              ),
              const SizedBox(height: 5),
              const LableAndPriceWidget(
                lable: 'الاجمالي',
                price: 4045,
                lableStyle: TextStyles.font16Black400w,
              )
            ],
          ),
        ),
        const SizedBox(height: 15),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AppButton(
              backgroundColor: AppColors.mainBlue,
              text: 'ادفع',
              textStyle: TextStyles.font16White400w,
              onPressed: () {},
            ),
            const SizedBox(width: 10),
            AppButton(
              backgroundColor: AppColors.mainRed,
              text: 'الغاء الطلب',
              textStyle: TextStyles.font16White400w,
              onPressed: () {},
            ),
          ],
        ),
      ],
    );
  }
}
