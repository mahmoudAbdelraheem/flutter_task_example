import 'package:flutter/material.dart';
import 'package:flutter_task_example/core/helpers/constants.dart';
import 'package:flutter_task_example/features/task_one/view/widgets/build_addational_info_item.dart';

class OrderAddetionalInfo extends StatelessWidget {
  const OrderAddetionalInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      height: 100,
      child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 3.5,
          ),
          itemCount: Constants.additionalInfo.length,
          itemBuilder: (context, index) {
            return BuildAdditionalInfoItem(
              icon: Constants.additionalInfo[index]['icon'],
              title: Constants.additionalInfo[index]['title'],
              subtitle: Constants.additionalInfo[index]['subtitle'],
            );
          }),
    );
  }
}
