import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

part 'landmark.freezed.dart';
part 'landmark.g.dart';

@freezed
class Landmark with _$Landmark {
  factory Landmark({
    required int id,
    required String name,
    required String imageName,
    required String state,
    required String park,
    required Coordinates coordinates,
  }) = _Landmark;
  Landmark._();

  factory Landmark.fromJson(Map<String, dynamic> json) =>
      _$LandmarkFromJson(json);

  late final LatLng latLng = LatLng(
    coordinates.latitude,
    coordinates.longitude,
  );
}

@freezed
class Coordinates with _$Coordinates {
  const factory Coordinates(
      {required double latitude, required double longitude}) = _Coordinates;
  factory Coordinates.fromJson(Map<String, dynamic> json) =>
      _$CoordinatesFromJson(json);
}
