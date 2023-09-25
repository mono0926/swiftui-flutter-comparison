// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, implicit_dynamic_parameter, implicit_dynamic_type, implicit_dynamic_method, strict_raw_type

part of 'user_data.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$isFavoriteHash() => r'c7bead389f0c058fe2a7607972d8f2edf96440ba';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [isFavorite].
@ProviderFor(isFavorite)
const isFavoriteProviderFamily = IsFavoriteFamily();

/// See also [isFavorite].
class IsFavoriteFamily extends Family<bool> {
  /// See also [isFavorite].
  const IsFavoriteFamily();

  /// See also [isFavorite].
  IsFavoriteProvider call(
    int id,
  ) {
    return IsFavoriteProvider(
      id,
    );
  }

  @override
  IsFavoriteProvider getProviderOverride(
    covariant IsFavoriteProvider provider,
  ) {
    return call(
      provider.id,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'isFavoriteProviderFamily';
}

/// See also [isFavorite].
class IsFavoriteProvider extends AutoDisposeProvider<bool> {
  /// See also [isFavorite].
  IsFavoriteProvider(
    int id,
  ) : this._internal(
          (ref) => isFavorite(
            ref as IsFavoriteRef,
            id,
          ),
          from: isFavoriteProviderFamily,
          name: r'isFavoriteProviderFamily',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$isFavoriteHash,
          dependencies: IsFavoriteFamily._dependencies,
          allTransitiveDependencies:
              IsFavoriteFamily._allTransitiveDependencies,
          id: id,
        );

  IsFavoriteProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
  }) : super.internal();

  final int id;

  @override
  Override overrideWith(
    bool Function(IsFavoriteRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: IsFavoriteProvider._internal(
        (ref) => create(ref as IsFavoriteRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<bool> createElement() {
    return _IsFavoriteProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is IsFavoriteProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin IsFavoriteRef on AutoDisposeProviderRef<bool> {
  /// The parameter `id` of this provider.
  int get id;
}

class _IsFavoriteProviderElement extends AutoDisposeProviderElement<bool>
    with IsFavoriteRef {
  _IsFavoriteProviderElement(super.provider);

  @override
  int get id => (origin as IsFavoriteProvider).id;
}

String _$landmarkHash() => r'efef45e1281593139b66ec39968297f2000f15f9';

/// See also [landmark].
@ProviderFor(landmark)
const landmarkProviderFamily = LandmarkFamily();

/// See also [landmark].
class LandmarkFamily extends Family<AsyncValue<Landmark>> {
  /// See also [landmark].
  const LandmarkFamily();

  /// See also [landmark].
  LandmarkProvider call(
    int id,
  ) {
    return LandmarkProvider(
      id,
    );
  }

  @override
  LandmarkProvider getProviderOverride(
    covariant LandmarkProvider provider,
  ) {
    return call(
      provider.id,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'landmarkProviderFamily';
}

/// See also [landmark].
class LandmarkProvider extends AutoDisposeFutureProvider<Landmark> {
  /// See also [landmark].
  LandmarkProvider(
    int id,
  ) : this._internal(
          (ref) => landmark(
            ref as LandmarkRef,
            id,
          ),
          from: landmarkProviderFamily,
          name: r'landmarkProviderFamily',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$landmarkHash,
          dependencies: LandmarkFamily._dependencies,
          allTransitiveDependencies: LandmarkFamily._allTransitiveDependencies,
          id: id,
        );

  LandmarkProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
  }) : super.internal();

  final int id;

  @override
  Override overrideWith(
    FutureOr<Landmark> Function(LandmarkRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: LandmarkProvider._internal(
        (ref) => create(ref as LandmarkRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Landmark> createElement() {
    return _LandmarkProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is LandmarkProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin LandmarkRef on AutoDisposeFutureProviderRef<Landmark> {
  /// The parameter `id` of this provider.
  int get id;
}

class _LandmarkProviderElement
    extends AutoDisposeFutureProviderElement<Landmark> with LandmarkRef {
  _LandmarkProviderElement(super.provider);

  @override
  int get id => (origin as LandmarkProvider).id;
}

String _$landmarkListHash() => r'2a564952a4fc1c489c52ae486ab8dbb3f7fae3db';

/// See also [landmarkList].
@ProviderFor(landmarkList)
final landmarkListProvider = AutoDisposeFutureProvider<List<Landmark>>.internal(
  landmarkList,
  name: r'landmarkListProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$landmarkListHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef LandmarkListRef = AutoDisposeFutureProviderRef<List<Landmark>>;
String _$showFavoritesOnlyHash() => r'be10495681e3048f4279e9ce218aec9cfce0a2b1';

/// See also [ShowFavoritesOnly].
@ProviderFor(ShowFavoritesOnly)
final showFavoritesOnlyProvider =
    AutoDisposeNotifierProvider<ShowFavoritesOnly, bool>.internal(
  ShowFavoritesOnly.new,
  name: r'showFavoritesOnlyProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$showFavoritesOnlyHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$ShowFavoritesOnly = AutoDisposeNotifier<bool>;
String _$favoriteHash() => r'155e69679550a18d41a533a7f7f81e4c42acc4e1';

/// See also [Favorite].
@ProviderFor(Favorite)
final favoriteProvider =
    AutoDisposeNotifierProvider<Favorite, Map<int, bool>>.internal(
  Favorite.new,
  name: r'favoriteProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$favoriteHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$Favorite = AutoDisposeNotifier<Map<int, bool>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
