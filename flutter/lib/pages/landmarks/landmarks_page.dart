import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'landmark_row.dart';
import 'models/models.dart';

class LandmarksPage extends ConsumerWidget {
  const LandmarksPage({super.key});

  static const routeName = '/Landmarks';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final landmarks = ref.watch(landmarkListProvider).value;
    return landmarks == null
        ? const Center(
            child: CircularProgressIndicator.adaptive(),
          )
        : CupertinoPageScaffold(
            child: CustomScrollView(
              slivers: [
                const CupertinoSliverNavigationBar(),
                // https://github.com/flutter/flutter/issues/119558
                SliverToBoxAdapter(
                  child: CupertinoListSection(
                    topMargin: 0,
                    backgroundColor: Colors.transparent,
                    children: [
                      CupertinoListTile(
                        title: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text('Favorites only'),
                            CupertinoSwitch(
                              value: ref.watch(showFavoritesOnlyProvider),
                              onChanged: (value) => ref
                                  .read(showFavoritesOnlyProvider.notifier)
                                  .toggle(),
                            ),
                          ],
                        ),
                      ),
                      for (final landmark in landmarks)
                        LandmarkRow(id: landmark.id),
                    ],
                  ),
                ),
              ],
            ),
          );
  }
}
