// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'landmark.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Landmark _$LandmarkFromJson(Map<String, dynamic> json) {
  return _Landmark.fromJson(json);
}

/// @nodoc
class _$LandmarkTearOff {
  const _$LandmarkTearOff();

  _Landmark call(
      {required int id,
      required String name,
      required String imageName,
      required String state,
      required String park,
      required Coordinates coordinates,
      required bool isFavorite}) {
    return _Landmark(
      id: id,
      name: name,
      imageName: imageName,
      state: state,
      park: park,
      coordinates: coordinates,
      isFavorite: isFavorite,
    );
  }

  Landmark fromJson(Map<String, Object> json) {
    return Landmark.fromJson(json);
  }
}

/// @nodoc
const $Landmark = _$LandmarkTearOff();

/// @nodoc
mixin _$Landmark {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get imageName => throw _privateConstructorUsedError;
  String get state => throw _privateConstructorUsedError;
  String get park => throw _privateConstructorUsedError;
  Coordinates get coordinates => throw _privateConstructorUsedError;
  bool get isFavorite => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LandmarkCopyWith<Landmark> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LandmarkCopyWith<$Res> {
  factory $LandmarkCopyWith(Landmark value, $Res Function(Landmark) then) =
      _$LandmarkCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String name,
      String imageName,
      String state,
      String park,
      Coordinates coordinates,
      bool isFavorite});

  $CoordinatesCopyWith<$Res> get coordinates;
}

/// @nodoc
class _$LandmarkCopyWithImpl<$Res> implements $LandmarkCopyWith<$Res> {
  _$LandmarkCopyWithImpl(this._value, this._then);

  final Landmark _value;
  // ignore: unused_field
  final $Res Function(Landmark) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? imageName = freezed,
    Object? state = freezed,
    Object? park = freezed,
    Object? coordinates = freezed,
    Object? isFavorite = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      imageName: imageName == freezed
          ? _value.imageName
          : imageName // ignore: cast_nullable_to_non_nullable
              as String,
      state: state == freezed
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String,
      park: park == freezed
          ? _value.park
          : park // ignore: cast_nullable_to_non_nullable
              as String,
      coordinates: coordinates == freezed
          ? _value.coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as Coordinates,
      isFavorite: isFavorite == freezed
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  $CoordinatesCopyWith<$Res> get coordinates {
    return $CoordinatesCopyWith<$Res>(_value.coordinates, (value) {
      return _then(_value.copyWith(coordinates: value));
    });
  }
}

/// @nodoc
abstract class _$LandmarkCopyWith<$Res> implements $LandmarkCopyWith<$Res> {
  factory _$LandmarkCopyWith(_Landmark value, $Res Function(_Landmark) then) =
      __$LandmarkCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String name,
      String imageName,
      String state,
      String park,
      Coordinates coordinates,
      bool isFavorite});

  @override
  $CoordinatesCopyWith<$Res> get coordinates;
}

/// @nodoc
class __$LandmarkCopyWithImpl<$Res> extends _$LandmarkCopyWithImpl<$Res>
    implements _$LandmarkCopyWith<$Res> {
  __$LandmarkCopyWithImpl(_Landmark _value, $Res Function(_Landmark) _then)
      : super(_value, (v) => _then(v as _Landmark));

  @override
  _Landmark get _value => super._value as _Landmark;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? imageName = freezed,
    Object? state = freezed,
    Object? park = freezed,
    Object? coordinates = freezed,
    Object? isFavorite = freezed,
  }) {
    return _then(_Landmark(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      imageName: imageName == freezed
          ? _value.imageName
          : imageName // ignore: cast_nullable_to_non_nullable
              as String,
      state: state == freezed
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String,
      park: park == freezed
          ? _value.park
          : park // ignore: cast_nullable_to_non_nullable
              as String,
      coordinates: coordinates == freezed
          ? _value.coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as Coordinates,
      isFavorite: isFavorite == freezed
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
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
      required this.coordinates,
      required this.isFavorite})
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
  final bool isFavorite;

  @override
  String toString() {
    return 'Landmark(id: $id, name: $name, imageName: $imageName, state: $state, park: $park, coordinates: $coordinates, isFavorite: $isFavorite)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Landmark &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.imageName, imageName) ||
                const DeepCollectionEquality()
                    .equals(other.imageName, imageName)) &&
            (identical(other.state, state) ||
                const DeepCollectionEquality().equals(other.state, state)) &&
            (identical(other.park, park) ||
                const DeepCollectionEquality().equals(other.park, park)) &&
            (identical(other.coordinates, coordinates) ||
                const DeepCollectionEquality()
                    .equals(other.coordinates, coordinates)) &&
            (identical(other.isFavorite, isFavorite) ||
                const DeepCollectionEquality()
                    .equals(other.isFavorite, isFavorite)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(imageName) ^
      const DeepCollectionEquality().hash(state) ^
      const DeepCollectionEquality().hash(park) ^
      const DeepCollectionEquality().hash(coordinates) ^
      const DeepCollectionEquality().hash(isFavorite);

  @JsonKey(ignore: true)
  @override
  _$LandmarkCopyWith<_Landmark> get copyWith =>
      __$LandmarkCopyWithImpl<_Landmark>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LandmarkToJson(this);
  }
}

abstract class _Landmark extends Landmark {
  factory _Landmark(
      {required int id,
      required String name,
      required String imageName,
      required String state,
      required String park,
      required Coordinates coordinates,
      required bool isFavorite}) = _$_Landmark;
  _Landmark._() : super._();

  factory _Landmark.fromJson(Map<String, dynamic> json) = _$_Landmark.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get imageName => throw _privateConstructorUsedError;
  @override
  String get state => throw _privateConstructorUsedError;
  @override
  String get park => throw _privateConstructorUsedError;
  @override
  Coordinates get coordinates => throw _privateConstructorUsedError;
  @override
  bool get isFavorite => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LandmarkCopyWith<_Landmark> get copyWith =>
      throw _privateConstructorUsedError;
}

Coordinates _$CoordinatesFromJson(Map<String, dynamic> json) {
  return _Coordinates.fromJson(json);
}

/// @nodoc
class _$CoordinatesTearOff {
  const _$CoordinatesTearOff();

  _Coordinates call({required double latitude, required double longitude}) {
    return _Coordinates(
      latitude: latitude,
      longitude: longitude,
    );
  }

  Coordinates fromJson(Map<String, Object> json) {
    return Coordinates.fromJson(json);
  }
}

/// @nodoc
const $Coordinates = _$CoordinatesTearOff();

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
      _$CoordinatesCopyWithImpl<$Res>;
  $Res call({double latitude, double longitude});
}

/// @nodoc
class _$CoordinatesCopyWithImpl<$Res> implements $CoordinatesCopyWith<$Res> {
  _$CoordinatesCopyWithImpl(this._value, this._then);

  final Coordinates _value;
  // ignore: unused_field
  final $Res Function(Coordinates) _then;

  @override
  $Res call({
    Object? latitude = freezed,
    Object? longitude = freezed,
  }) {
    return _then(_value.copyWith(
      latitude: latitude == freezed
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: longitude == freezed
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$CoordinatesCopyWith<$Res>
    implements $CoordinatesCopyWith<$Res> {
  factory _$CoordinatesCopyWith(
          _Coordinates value, $Res Function(_Coordinates) then) =
      __$CoordinatesCopyWithImpl<$Res>;
  @override
  $Res call({double latitude, double longitude});
}

/// @nodoc
class __$CoordinatesCopyWithImpl<$Res> extends _$CoordinatesCopyWithImpl<$Res>
    implements _$CoordinatesCopyWith<$Res> {
  __$CoordinatesCopyWithImpl(
      _Coordinates _value, $Res Function(_Coordinates) _then)
      : super(_value, (v) => _then(v as _Coordinates));

  @override
  _Coordinates get _value => super._value as _Coordinates;

  @override
  $Res call({
    Object? latitude = freezed,
    Object? longitude = freezed,
  }) {
    return _then(_Coordinates(
      latitude: latitude == freezed
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: longitude == freezed
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
        (other is _Coordinates &&
            (identical(other.latitude, latitude) ||
                const DeepCollectionEquality()
                    .equals(other.latitude, latitude)) &&
            (identical(other.longitude, longitude) ||
                const DeepCollectionEquality()
                    .equals(other.longitude, longitude)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(latitude) ^
      const DeepCollectionEquality().hash(longitude);

  @JsonKey(ignore: true)
  @override
  _$CoordinatesCopyWith<_Coordinates> get copyWith =>
      __$CoordinatesCopyWithImpl<_Coordinates>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CoordinatesToJson(this);
  }
}

abstract class _Coordinates implements Coordinates {
  const factory _Coordinates(
      {required double latitude, required double longitude}) = _$_Coordinates;

  factory _Coordinates.fromJson(Map<String, dynamic> json) =
      _$_Coordinates.fromJson;

  @override
  double get latitude => throw _privateConstructorUsedError;
  @override
  double get longitude => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CoordinatesCopyWith<_Coordinates> get copyWith =>
      throw _privateConstructorUsedError;
}
