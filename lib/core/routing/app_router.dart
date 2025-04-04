import 'package:flutter/material.dart';
import 'package:flutter_task_example/core/routing/routes.dart';
import 'package:flutter_task_example/home_screen.dart';
import 'package:flutter_task_example/features/task_one/view/screen/task_one_screen.dart';
import 'package:flutter_task_example/features/task_two/view/screen/task_two_screen.dart';

class AppRouter {
  Route? generateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.homeScreen:
        return MaterialPageRoute(
          builder: (_) => const HomeScreen(),
        );

      case Routes.taskOneScreen:
        return MaterialPageRoute(
          builder: (_) => const TaskOneScreen(),
        );
      case Routes.taskTwoScreen:
        return MaterialPageRoute(
          builder: (_) => const TaskTwoScreen(),
        );

      default:
        return null;
    }
  }
}
