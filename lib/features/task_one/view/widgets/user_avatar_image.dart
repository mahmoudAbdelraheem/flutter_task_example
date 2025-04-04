import 'package:flutter/material.dart';

class UserAvatarImage extends StatelessWidget {
  final String topImage;
  final String backImage;
  const UserAvatarImage({
    super.key,
    required this.topImage,
    required this.backImage,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 42,
          height: 42,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: AssetImage(
                backImage,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            width: 36,
            height: 36,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage(
                  topImage,
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
