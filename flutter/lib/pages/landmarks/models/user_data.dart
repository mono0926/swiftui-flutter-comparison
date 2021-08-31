import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'models.dart';

final showFavoritesOnlyProvider = StateProvider((ref) => false);

final favoriteController =
    StateNotifierProvider<FavoriteController, Map<int, bool>>(
  (ref) => FavoriteController(),
);

class FavoriteController extends StateNotifier<Map<int, bool>> {
  FavoriteController() : super({});

  void update({required int id, required bool isFavorite}) {
    state = {
      ...state,
      id: isFavorite,
    };
  }
}

final isFavoriteProviders = Provider.family((ref, int id) {
  final favoriteMap = ref.watch(favoriteController);
  return favoriteMap.containsKey(id);
});

final landmarkProviders = Provider.family((ref, int id) {
  return (ref.watch(landmarkDataProvider).data?.value ?? [])
      .firstWhere((l) => l.id == id);
});

final landmarkListProvider = Provider((ref) {
  final landmarks = ref.watch(landmarkDataProvider).data?.value ?? [];
  final showFavoritesOnly = ref.watch(showFavoritesOnlyProvider).state;
  final favoriteMap = ref.watch(favoriteController);

  return showFavoritesOnly
      ? landmarks.where((l) => favoriteMap.containsKey(l.id)).toList()
      : landmarks;
});
