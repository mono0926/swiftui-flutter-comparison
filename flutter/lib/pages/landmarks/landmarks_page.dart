import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:swiftui_flutter/widgets/widgets.dart';

import 'landmark_row.dart';
import 'models/models.dart';

class LandmarksPage extends ConsumerWidget {
  const LandmarksPage({Key? key}) : super(key: key);

  static const routeName = '/Landmarks';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final landmarks = ref.watch(landmarkListProvider);
    return CupertinoPageScaffold(
      child: CustomScrollView(
        slivers: [
          const CupertinoSliverNavigationBar(),
          SliverList(
            delegate: SliverChildListDelegate.fixed(
              [
                CupertinoCell(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('Favorites only'),
                      CupertinoSwitch(
                        value: ref.watch(showFavoritesOnlyProvider).state,
                        onChanged: (value) =>
                            ref.read(showFavoritesOnlyProvider).state = value,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                final landmark = landmarks[index];
                return LandmarkRow(id: landmark.id);
              },
              childCount: landmarks.length,
            ),
          ),
        ],
      ),
    );
  }
}
