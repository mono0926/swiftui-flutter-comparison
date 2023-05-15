import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapView extends StatelessWidget {
  const MapView({
    super.key,
    required this.latLng,
  });

  final LatLng latLng;

  @override
  Widget build(BuildContext context) {
    return GoogleMap(
      myLocationButtonEnabled: false,
      initialCameraPosition: CameraPosition(
        target: latLng,
        zoom: 7.5,
      ),
    );
  }
}
