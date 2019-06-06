import 'package:flutter/foundation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Landmark {
  Landmark({
    @required this.id,
    @required this.name,
    @required this.imageName,
    @required this.state,
    @required this.park,
    @required this.category,
    @required this.coordinates,
    this.isFavorite,
  });

  Landmark.fromJson(Map<String, dynamic> json)
      : this(
          id: json['id'] as int,
          name: json['name'] as String,
          imageName: json['imageName'] as String,
          park: json['park'] as String,
          state: json['state'] as String,
          coordinates: _parseCoordinates(json['coordinates']),
          isFavorite: json['isFavorite'] as bool,
        );

  final int id;
  final String name;
  final String imageName;
  final String state;
  final String park;
  final Category category;
  final Coordinates coordinates;
  bool isFavorite;

  LatLng get latLng => LatLng(coordinates.latitude, coordinates.longitude);

  static Coordinates _parseCoordinates(dynamic json) {
    final map = (json as Map).cast<String, dynamic>();
    return Coordinates(
      latitude: map['latitude'] as double,
      longitude: map['longitude'] as double,
    );
  }
}

enum Category {
  featured,
  lakes,
  rivers,
}

class Coordinates {
  const Coordinates({
    @required this.latitude,
    @required this.longitude,
  });

  final double latitude;
  final double longitude;
}
