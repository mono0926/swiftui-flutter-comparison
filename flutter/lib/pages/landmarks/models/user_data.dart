import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';

import 'models.dart';

class UserData {
  UserData() {
    _loadLandmarks();
  }

  final _showFavoritesOnly = ValueNotifier<bool>(false);
  final _landmarksAll =
      ValueNotifier<UnmodifiableListView<Landmark>>(UnmodifiableListView([]));
  final _landmarksFiltered =
      ValueNotifier<UnmodifiableListView<Landmark>>(UnmodifiableListView([]));
  final _landmarksLoaded = <Landmark>[];

  ValueListenable<bool> get showFavoritesOnly => _showFavoritesOnly;
  ValueListenable<UnmodifiableListView<Landmark>> get landmarksAll =>
      _landmarksAll;
  ValueListenable<UnmodifiableListView<Landmark>> get landmarksFiltered =>
      _landmarksFiltered;

  Landmark getLandmark(int id) =>
      _landmarksLoaded.firstWhere((l) => l.id == id);

  void updateShowFavoritesOnly({@required bool favoritesOnly}) {
    _showFavoritesOnly.value = favoritesOnly;
    _landmarksFiltered.value = UnmodifiableListView(favoritesOnly
        ? _landmarksLoaded.where((l) => l.isFavorite)
        : _landmarksLoaded);
  }

  void updateIsFavorite(int id, {@required bool isFavorite}) {
    getLandmark(id).isFavorite = isFavorite;
    _updateLandmarks();
  }

  void _loadLandmarks() async {
    _landmarksLoaded.addAll(await DataLoader().load());
    _updateLandmarks();
  }

  void _updateLandmarks() {
    _landmarksAll.value = UnmodifiableListView(_landmarksLoaded);
    _landmarksFiltered.value = _landmarksAll.value;
  }
}

class UserDataProvider extends InheritedWidget {
  const UserDataProvider(
    this.data, {
    Key key,
    @required Widget child,
  })  : assert(child != null),
        super(key: key, child: child);

  final UserData data;

  static UserData of(BuildContext context) {
    return (context.inheritFromWidgetOfExactType(UserDataProvider)
            as UserDataProvider)
        .data;
  }

  @override
  bool updateShouldNotify(UserDataProvider oldWidget) => false;
}
