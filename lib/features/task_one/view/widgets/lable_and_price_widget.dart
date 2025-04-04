import 'package:flutter/material.dart';
import 'package:flutter_task_example/core/theme/text_styles.dart';

class LableAndPriceWidget extends StatelessWidget {
  final String lable;
  final double price;
  final TextStyle? lableStyle;
  const LableAndPriceWidget({
    super.key,
    required this.lable,
    required this.price,
    this.lableStyle,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            lable,
            style: lableStyle ?? TextStyles.font14Black400w,
          ),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                    text: '$price ',
                    style: TextStyles.font13Black400w.copyWith(
                      fontFamily: 'Din',
                    )),
                TextSpan(
                  text: 'ر.س',
                  style: TextStyles.font13MoreDarkGray400w.copyWith(
                    fontFamily: 'Din',
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
