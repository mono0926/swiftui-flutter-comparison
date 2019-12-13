import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:swiftui_flutter/widgets/widgets.dart';

import 'landmark_row.dart';
import 'models/models.dart';

class LandmarksPage extends StatelessWidget {
  const LandmarksPage();

  static const routeName = '/Landmarks';

  @override
  Widget build(BuildContext context) {
    final data = Provider.of<UserData>(context);
    final landmarks = data.landmarks;
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
                        value: data.showFavoritesOnly,
                        onChanged: (value) =>
                            data.updateShowFavoritesOnly(favoritesOnly: value),
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
                return Provider.value(
                  key: ValueKey(landmark.id),
                  value: landmark,
                  child: const LandmarkRow(),
                );
              },
              childCount: landmarks.length,
            ),
          ),
        ],
      ),
    );
  }
}
