import 'package:flutter/material.dart';
import 'package:flutter_task_example/core/theme/app_colors.dart';
import 'package:flutter_task_example/features/task_one/view/widgets/border_widget.dart';
import 'package:flutter_task_example/features/task_one/view/widgets/image_slider.dart';
import 'package:flutter_task_example/features/task_one/view/widgets/user_info_widget.dart';

class OrderImagesWithSenderAndReceiverData extends StatelessWidget {
  const OrderImagesWithSenderAndReceiverData({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      margin: const EdgeInsets.symmetric(vertical: 20),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ImageSlider(),
          Row(
            children: [
              BorderWidget(),
              SizedBox(width: 10),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  UserInfoWidget(
                    topImage: 'assets/images/pngs/person1.png',
                    backImage: 'assets/images/pngs/person2.png',
                    title: 'انت',
                    name: 'محمد علي',
                    supTitle: 'البائع',
                    icon: 'assets/images/svgs/ep_sell.svg',
                    backgroundColor: AppColors.yellowColor,
                  ),
                  UserInfoWidget(
                    topImage: 'assets/images/pngs/person1.png',
                    backImage: 'assets/images/pngs/person3.png',
                    name: 'محمود احمد',
                    supTitle: 'المشتري',
                    icon: 'assets/images/svgs/payer_icon.svg',
                    backgroundColor: AppColors.mainBlue,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
