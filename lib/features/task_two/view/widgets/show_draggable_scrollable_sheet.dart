import 'package:flutter/material.dart';
import 'package:flutter_task_example/core/helpers/constants.dart';
import 'package:flutter_task_example/core/theme/text_styles.dart';
import 'package:flutter_task_example/features/task_two/view/widgets/build_place_image.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class ShowDraggableScrollableSheet extends StatelessWidget {
  final Function(LatLng position) onTap;
  const ShowDraggableScrollableSheet({
    super.key,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.16,
      minChildSize: 0.1,
      maxChildSize: 0.3,
      builder: (context, scrollController) {
        return Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
          ),
          padding: const EdgeInsets.all(16),
          child: ListView(
            controller: scrollController,
            children: [
              const Text(
                'اكتشف الوجهات',
                style: TextStyles.font14Black400w,
              ),
              const SizedBox(height: 10),
              SizedBox(
                height: 110,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: Constants.places.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        onTap(Constants.places[index]['location']);
                      },
                      child: BuildPlaceImageWidget(
                        image: Constants.places[index]['image'],
                        place: Constants.places[index]['place'],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
