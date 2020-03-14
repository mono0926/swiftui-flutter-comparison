import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';

import 'models.dart';

class UserData extends ChangeNotifier {
  UserData({
    @required this.dataLoader,
  }) {
    _loadLandmarks();
  }

  final DataLoader dataLoader;
  bool _showFavoritesOnly = false;
  final _landmarks = <Landmark>[];

  bool get showFavoritesOnly => _showFavoritesOnly;
  UnmodifiableListView<Landmark> get landmarks => UnmodifiableListView(
      showFavoritesOnly ? _landmarks.where((l) => l.isFavorite) : _landmarks);

  Landmark getLandmark(int id) => _landmarks.firstWhere((l) => l.id == id);

  void updateShowFavoritesOnly({@required bool favoritesOnly}) {
    _showFavoritesOnly = favoritesOnly;
    notifyListeners();
  }

  void updateIsFavorite(int id, {@required bool isFavorite}) {
    final landmark = getLandmark(id);
    _landmarks[_landmarks.indexOf(landmark)] = landmark.copyWith(
      isFavorite: isFavorite,
    );
    notifyListeners();
  }

  Future<void> _loadLandmarks() async {
    _landmarks.addAll(await dataLoader.load());
    notifyListeners();
  }
}
