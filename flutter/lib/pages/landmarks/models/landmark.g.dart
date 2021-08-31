// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'landmark.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Landmark _$$_LandmarkFromJson(Map<String, dynamic> json) => _$_Landmark(
      id: json['id'] as int,
      name: json['name'] as String,
      imageName: json['imageName'] as String,
      state: json['state'] as String,
      park: json['park'] as String,
      coordinates:
          Coordinates.fromJson(json['coordinates'] as Map<String, dynamic>),
      isFavorite: json['isFavorite'] as bool,
    );

Map<String, dynamic> _$$_LandmarkToJson(_$_Landmark instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'imageName': instance.imageName,
      'state': instance.state,
      'park': instance.park,
      'coordinates': instance.coordinates,
      'isFavorite': instance.isFavorite,
    };

_$_Coordinates _$$_CoordinatesFromJson(Map<String, dynamic> json) =>
    _$_Coordinates(
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
    );

Map<String, dynamic> _$$_CoordinatesToJson(_$_Coordinates instance) =>
    <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
    };
