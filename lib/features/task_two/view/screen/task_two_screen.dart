import 'package:flutter/material.dart';
import 'package:flutter_task_example/features/task_two/view/widgets/show_draggable_scrollable_sheet.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class TaskTwoScreen extends StatefulWidget {
  const TaskTwoScreen({super.key});

  @override
  State<TaskTwoScreen> createState() => _TaskTwoScreenState();
}

class _TaskTwoScreenState extends State<TaskTwoScreen> {
  late GoogleMapController mapController;

  final LatLng _center = const LatLng(30.033333, 31.233334);

  final Set<Marker> _markers = {
    Marker(
      markerId: const MarkerId('marker1'),
      position: const LatLng(30.0333, 31.2333),
      icon: AssetMapBitmap(
        'assets/images/pngs/marker1.png',
        width: 40,
        height: 40,
      ),
    ),
    Marker(
      markerId: const MarkerId('marker2'),
      position: const LatLng(30.0370, 31.2400),
      icon: AssetMapBitmap(
        'assets/images/pngs/marker2.png',
        width: 40,
        height: 40,
      ),
    ),
    Marker(
      markerId: const MarkerId('marker3'),
      position: const LatLng(30.0290, 31.2260),
      icon: AssetMapBitmap(
        'assets/images/pngs/marker3.png',
        width: 40,
        height: 40,
      ),
    ),
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: Stack(
        children: [
          /// ✅ Google Map في الخلفية
          GoogleMap(
            onMapCreated: (controller) {
              mapController = controller;
            },
            initialCameraPosition: CameraPosition(
              target: _center,
              zoom: 15.0,
            ),
            markers: _markers,
          ),

          ShowDraggableScrollableSheet(
            onTap: (LatLng position) {
              mapController.animateCamera(
                CameraUpdate.newLatLngZoom(position, 17),
              );
            },
          ),
        ],
      ),
    );
  }
}
