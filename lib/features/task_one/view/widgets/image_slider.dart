import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_task_example/core/helpers/constants.dart';
import 'package:flutter_task_example/core/theme/app_colors.dart';

class ImageSlider extends StatefulWidget {
  const ImageSlider({super.key});

  @override
  State<ImageSlider> createState() => _ImageSliderState();
}

class _ImageSliderState extends State<ImageSlider> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          height: 100,
          width: 150,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
          ),
          child: CarouselSlider(
            options: CarouselOptions(
                height: 100,
                initialPage: 0,
                enableInfiniteScroll: true,
                autoPlayCurve: Curves.fastOutSlowIn,
                enlargeCenterPage: true,
                scrollDirection: Axis.horizontal,
                onPageChanged: (index, reason) {
                  setState(() {
                    selectedIndex = index;
                  });
                }),
            items: List.generate(
              Constants.ProductImages.length,
              (index) {
                return ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    Constants.ProductImages[index],
                  ),
                );
              },
            ),
          ),
        ),
        const SizedBox(height: 10),
        Row(
          children: List.generate(
            Constants.ProductImages.length,
            (index) => AnimatedContainer(
              margin: const EdgeInsets.only(right: 5),
              duration: const Duration(seconds: 1),
              curve: Curves.fastOutSlowIn,
              height: 6,
              width: selectedIndex == index ? 22 : 6,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: selectedIndex == index
                    ? AppColors.yellowColor
                    : AppColors.lightGray,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
