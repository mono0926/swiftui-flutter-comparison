// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, implicit_dynamic_parameter, implicit_dynamic_type, implicit_dynamic_method, strict_raw_type

part of 'landmark.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Landmark _$$_LandmarkFromJson(Map json) => _$_Landmark(
      id: json['id'] as int,
      name: json['name'] as String,
      imageName: json['imageName'] as String,
      state: json['state'] as String,
      park: json['park'] as String,
      coordinates: Coordinates.fromJson(
          Map<String, dynamic>.from(json['coordinates'] as Map)),
    );

Map<String, dynamic> _$$_LandmarkToJson(_$_Landmark instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'imageName': instance.imageName,
      'state': instance.state,
      'park': instance.park,
      'coordinates': instance.coordinates.toJson(),
    };

_$_Coordinates _$$_CoordinatesFromJson(Map json) => _$_Coordinates(
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
    );

Map<String, dynamic> _$$_CoordinatesToJson(_$_Coordinates instance) =>
    <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
    };
