import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'models.dart';

part 'user_data.g.dart';

@riverpod
class ShowFavoritesOnly extends _$ShowFavoritesOnly {
  @override
  bool build() => false;

  void toggle() => state = !state;
}

@riverpod
class Favorite extends _$Favorite {
  // TODO(mono): freezed化
  @override
  Map<int, bool> build() => {};

  void update({required int id, required bool isFavorite}) {
    state = {
      ...state,
      id: isFavorite,
    };
  }
}

@riverpod
bool isFavorite(IsFavoriteRef ref, int id) {
  final favoriteMap = ref.watch(favoriteProvider);
  return favoriteMap.containsKey(id);
}

@riverpod
FutureOr<Landmark> landmark(LandmarkRef ref, int id) async =>
    (await ref.watch(landmarkDataProvider.future))
        .firstWhere((l) => l.id == id);

@riverpod
Future<List<Landmark>> landmarkList(LandmarkListRef ref) async {
  final landmarks = await ref.watch(landmarkDataProvider.future);
  final favoriteMap = ref.watch(favoriteProvider);

  return ref.watch(showFavoritesOnlyProvider)
      ? landmarks.where((l) => favoriteMap.containsKey(l.id)).toList()
      : landmarks;
}
