import 'package:flutter/foundation.dart';

class Landmark {
  Landmark({
    @required this.id,
    @required this.name,
    @required this.imageName,
    this.state,
    this.park,
    this.category,
    this.coordinates,
  });

  Landmark.fromJson(Map<String, dynamic> json)
      : this(
          id: json['id'] as int,
          name: json['name'] as String,
          imageName: json['imageName'] as String,
          park: json['park'] as String,
          state: json['state'] as String,
          coordinates: _parseCoordinates(json['coordinates']),
        );

  final int id;
  final String name;
  final String imageName;
  String state;
  String park;
  Category category;
  Coordinates coordinates;

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
