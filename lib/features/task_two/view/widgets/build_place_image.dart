import 'package:flutter/material.dart';
import 'package:flutter_task_example/core/theme/text_styles.dart';

class BuildPlaceImageWidget extends StatelessWidget {
  final String image;
  final String place;
  const BuildPlaceImageWidget({
    super.key,
    required this.image,
    required this.place,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.only(left: 15),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(
              image,
              width: 135,
              height: 105,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          right: 10,
          bottom: 10,
          child: Text(
            place,
            style: TextStyles.font16White400w,
          ),
        ),
      ],
    );
  }
}
