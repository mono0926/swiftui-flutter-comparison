import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:swiftui_flutter/widgets/widgets.dart';

import 'landmark_row.dart';
import 'models/models.dart';

class LandmarksPage extends StatelessWidget {
  const LandmarksPage();

  static const routeName = '/Landmarks';

  @override
  Widget build(BuildContext context) {
    final data = UserDataProvider.of(context);
    return CupertinoPageScaffold(
      child: CustomScrollView(
        slivers: [
          CupertinoSliverNavigationBar(),
          SliverList(
            delegate: SliverChildListDelegate.fixed(
              [
                CupertinoCell(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('Favorites only'),
                      ValueListenableBuilder<bool>(
                        valueListenable: data.showFavoritesOnly,
                        builder: (context, showFavoritesOnly, _child) {
                          return CupertinoSwitch(
                            value: showFavoritesOnly,
                            onChanged: (value) => data.updateShowFavoritesOnly(
                                favoritesOnly: value),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          ValueListenableBuilder<List<Landmark>>(
            valueListenable: data.landmarksFiltered,
            builder: (context, landmarks, child) {
              return SliverList(
                delegate: SliverChildBuilderDelegate(
                  (context, index) {
                    final landmark = landmarks[index];
                    return LandmarkRow(
                      key: ValueKey(landmark.id),
                      landmark: landmark,
                    );
                  },
                  childCount: landmarks.length,
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
