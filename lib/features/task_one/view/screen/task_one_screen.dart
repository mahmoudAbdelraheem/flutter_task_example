import 'package:flutter/material.dart';
import 'package:flutter_task_example/core/theme/app_colors.dart';
import 'package:flutter_task_example/core/widgets/app_divider.dart';
import 'package:flutter_task_example/features/task_one/view/widgets/build_order_stepper.dart';
import 'package:flutter_task_example/features/task_one/view/widgets/custom_app_bar.dart';
import 'package:flutter_task_example/features/task_one/view/widgets/order_addetional_info.dart';
import 'package:flutter_task_example/features/task_one/view/widgets/order_details.dart';
import 'package:flutter_task_example/features/task_one/view/widgets/order_images_with_sender_and_receiver_data.dart';
import 'package:flutter_task_example/features/task_one/view/widgets/order_payment_details_and_buttons.dart';
import 'package:flutter_task_example/features/task_one/view/widgets/order_quantity.dart';
import 'package:flutter_task_example/features/task_one/view/widgets/order_status.dart';

class TaskOneScreen extends StatelessWidget {
  const TaskOneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            //! custom app bar
            CustomAppBar(),
            Expanded(
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //! order status
                    OrderStatus(),
                    //! app divider line
                    AppDivider(color: AppColors.dividerGray),
                    //! order stepper widget
                    BuildOrderStepper(currentStep: 1),
                    //! order details widget
                    OrderDetails(),
                    //! order quantity widget
                    OrderQuantity(
                      quantity: 5,
                    ),
                    //! order images with sender and receiver data
                    OrderImagesWithSenderAndReceiverData(),
                    //! addetional info
                    OrderAddetionalInfo(),
                    //! order Payment details and buttons
                    OrderPaymentDetailsAndButtons(),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
