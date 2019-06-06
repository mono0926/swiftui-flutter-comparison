import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'models/models.dart';

class MapView extends StatelessWidget {
  const MapView({
    @required this.coordinates,
  });

  final Coordinates coordinates;

  @override
  Widget build(BuildContext context) {
    return GoogleMap(
      mapType: MapType.normal,
      myLocationButtonEnabled: false,
      initialCameraPosition: CameraPosition(
        target: LatLng(coordinates.latitude, coordinates.longitude),
        zoom: 7.5,
      ),
    );
  }
}
