import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapView extends StatelessWidget {
  const MapView();
  @override
  Widget build(BuildContext context) {
    return GoogleMap(
      mapType: MapType.normal,
      myLocationButtonEnabled: false,
      initialCameraPosition: CameraPosition(
        target: const LatLng(34.011286, -116.166868),
        zoom: 7.5,
      ),
    );
  }
}
