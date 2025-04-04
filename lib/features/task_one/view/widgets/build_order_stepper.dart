import 'package:flutter/material.dart';
import 'package:flutter_task_example/core/helpers/constants.dart';
import 'package:flutter_task_example/features/task_one/view/widgets/build_step_widget.dart';

class BuildOrderStepper extends StatelessWidget {
  final int currentStep;

  const BuildOrderStepper({super.key, required this.currentStep});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      margin: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          Row(
            children: List.generate(
              Constants.stepperlabels.length,
              (index) {
                bool isActive = index == currentStep;
                bool isCompleted = index < currentStep;

                return BuildStepWidget(
                  index: index,
                  isCompleted: isCompleted,
                  isActive: isActive,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
