// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'landmark.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Landmark _$LandmarkFromJson(Map<String, dynamic> json) {
  return _Landmark.fromJson(json);
}

/// @nodoc
mixin _$Landmark {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get imageName => throw _privateConstructorUsedError;
  String get state => throw _privateConstructorUsedError;
  String get park => throw _privateConstructorUsedError;
  Coordinates get coordinates => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LandmarkCopyWith<Landmark> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LandmarkCopyWith<$Res> {
  factory $LandmarkCopyWith(Landmark value, $Res Function(Landmark) then) =
      _$LandmarkCopyWithImpl<$Res, Landmark>;
  @useResult
  $Res call(
      {int id,
      String name,
      String imageName,
      String state,
      String park,
      Coordinates coordinates});

  $CoordinatesCopyWith<$Res> get coordinates;
}

/// @nodoc
class _$LandmarkCopyWithImpl<$Res, $Val extends Landmark>
    implements $LandmarkCopyWith<$Res> {
  _$LandmarkCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? imageName = null,
    Object? state = null,
    Object? park = null,
    Object? coordinates = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      imageName: null == imageName
          ? _value.imageName
          : imageName // ignore: cast_nullable_to_non_nullable
              as String,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String,
      park: null == park
          ? _value.park
          : park // ignore: cast_nullable_to_non_nullable
              as String,
      coordinates: null == coordinates
          ? _value.coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as Coordinates,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CoordinatesCopyWith<$Res> get coordinates {
    return $CoordinatesCopyWith<$Res>(_value.coordinates, (value) {
      return _then(_value.copyWith(coordinates: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_LandmarkCopyWith<$Res> implements $LandmarkCopyWith<$Res> {
  factory _$$_LandmarkCopyWith(
          _$_Landmark value, $Res Function(_$_Landmark) then) =
      __$$_LandmarkCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String imageName,
      String state,
      String park,
      Coordinates coordinates});

  @override
  $CoordinatesCopyWith<$Res> get coordinates;
}

/// @nodoc
class __$$_LandmarkCopyWithImpl<$Res>
    extends _$LandmarkCopyWithImpl<$Res, _$_Landmark>
    implements _$$_LandmarkCopyWith<$Res> {
  __$$_LandmarkCopyWithImpl(
      _$_Landmark _value, $Res Function(_$_Landmark) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? imageName = null,
    Object? state = null,
    Object? park = null,
    Object? coordinates = null,
  }) {
    return _then(_$_Landmark(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      imageName: null == imageName
          ? _value.imageName
          : imageName // ignore: cast_nullable_to_non_nullable
              as String,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String,
      park: null == park
          ? _value.park
          : park // ignore: cast_nullable_to_non_nullable
              as String,
      coordinates: null == coordinates
          ? _value.coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as Coordinates,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Landmark extends _Landmark {
  _$_Landmark(
      {required this.id,
      required this.name,
      required this.imageName,
      required this.state,
      required this.park,
      required this.coordinates})
      : super._();

  factory _$_Landmark.fromJson(Map<String, dynamic> json) =>
      _$$_LandmarkFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String imageName;
  @override
  final String state;
  @override
  final String park;
  @override
  final Coordinates coordinates;

  @override
  String toString() {
    return 'Landmark(id: $id, name: $name, imageName: $imageName, state: $state, park: $park, coordinates: $coordinates)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Landmark &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.imageName, imageName) ||
                other.imageName == imageName) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.park, park) || other.park == park) &&
            (identical(other.coordinates, coordinates) ||
                other.coordinates == coordinates));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, imageName, state, park, coordinates);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LandmarkCopyWith<_$_Landmark> get copyWith =>
      __$$_LandmarkCopyWithImpl<_$_Landmark>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LandmarkToJson(
      this,
    );
  }
}

abstract class _Landmark extends Landmark {
  factory _Landmark(
      {required final int id,
      required final String name,
      required final String imageName,
      required final String state,
      required final String park,
      required final Coordinates coordinates}) = _$_Landmark;
  _Landmark._() : super._();

  factory _Landmark.fromJson(Map<String, dynamic> json) = _$_Landmark.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get imageName;
  @override
  String get state;
  @override
  String get park;
  @override
  Coordinates get coordinates;
  @override
  @JsonKey(ignore: true)
  _$$_LandmarkCopyWith<_$_Landmark> get copyWith =>
      throw _privateConstructorUsedError;
}

Coordinates _$CoordinatesFromJson(Map<String, dynamic> json) {
  return _Coordinates.fromJson(json);
}

/// @nodoc
mixin _$Coordinates {
  double get latitude => throw _privateConstructorUsedError;
  double get longitude => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CoordinatesCopyWith<Coordinates> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoordinatesCopyWith<$Res> {
  factory $CoordinatesCopyWith(
          Coordinates value, $Res Function(Coordinates) then) =
      _$CoordinatesCopyWithImpl<$Res, Coordinates>;
  @useResult
  $Res call({double latitude, double longitude});
}

/// @nodoc
class _$CoordinatesCopyWithImpl<$Res, $Val extends Coordinates>
    implements $CoordinatesCopyWith<$Res> {
  _$CoordinatesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = null,
    Object? longitude = null,
  }) {
    return _then(_value.copyWith(
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CoordinatesCopyWith<$Res>
    implements $CoordinatesCopyWith<$Res> {
  factory _$$_CoordinatesCopyWith(
          _$_Coordinates value, $Res Function(_$_Coordinates) then) =
      __$$_CoordinatesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double latitude, double longitude});
}

/// @nodoc
class __$$_CoordinatesCopyWithImpl<$Res>
    extends _$CoordinatesCopyWithImpl<$Res, _$_Coordinates>
    implements _$$_CoordinatesCopyWith<$Res> {
  __$$_CoordinatesCopyWithImpl(
      _$_Coordinates _value, $Res Function(_$_Coordinates) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = null,
    Object? longitude = null,
  }) {
    return _then(_$_Coordinates(
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Coordinates implements _Coordinates {
  const _$_Coordinates({required this.latitude, required this.longitude});

  factory _$_Coordinates.fromJson(Map<String, dynamic> json) =>
      _$$_CoordinatesFromJson(json);

  @override
  final double latitude;
  @override
  final double longitude;

  @override
  String toString() {
    return 'Coordinates(latitude: $latitude, longitude: $longitude)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Coordinates &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, latitude, longitude);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CoordinatesCopyWith<_$_Coordinates> get copyWith =>
      __$$_CoordinatesCopyWithImpl<_$_Coordinates>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CoordinatesToJson(
      this,
    );
  }
}

abstract class _Coordinates implements Coordinates {
  const factory _Coordinates(
      {required final double latitude,
      required final double longitude}) = _$_Coordinates;

  factory _Coordinates.fromJson(Map<String, dynamic> json) =
      _$_Coordinates.fromJson;

  @override
  double get latitude;
  @override
  double get longitude;
  @override
  @JsonKey(ignore: true)
  _$$_CoordinatesCopyWith<_$_Coordinates> get copyWith =>
      throw _privateConstructorUsedError;
}
