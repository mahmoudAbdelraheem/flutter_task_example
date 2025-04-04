import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_task_example/core/helpers/extenstions.dart';

class BackIconButton extends StatelessWidget {
  const BackIconButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => context.pop(),
      child: SvgPicture.asset(
        'assets/images/svgs/back_icon.svg',
        width: 15,
        height: 30,
        fit: BoxFit.cover,
      ),
    );
  }
}
