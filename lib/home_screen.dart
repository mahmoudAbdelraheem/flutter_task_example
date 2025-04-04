import 'package:flutter/material.dart';
import 'package:flutter_task_example/core/helpers/extenstions.dart';
import 'package:flutter_task_example/core/routing/routes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            MaterialButton(
              color: Colors.green,
              onPressed: () {
                context.pushNamed(Routes.taskOneScreen);
              },
              child: const Text(
                'Go to Task 1 Screen',
                style: TextStyle(fontSize: 20),
              ),
            ),
            const SizedBox(height: 20),
            MaterialButton(
              color: Colors.red,
              onPressed: () {
                context.pushNamed(Routes.taskTwoScreen);
              },
              child: const Text(
                'Go to Task 2 Screen',
                style: TextStyle(fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
