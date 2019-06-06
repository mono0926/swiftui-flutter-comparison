import 'package:flutter/cupertino.dart';

import 'landmark_row.dart';
import 'models/models.dart';

class EssentialsPage extends StatelessWidget {
  const EssentialsPage();

  static const routeName = '/Landmarks';

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: CustomScrollView(
        slivers: [
          CupertinoSliverNavigationBar(),
          FutureBuilder<List<Landmark>>(
            future: DataLoader().load(),
            builder: (context, snapshot) {
              if (!snapshot.hasData) {
                return const SliverFillRemaining(
                  child: CupertinoActivityIndicator(),
                );
              }
              final landmarks = snapshot.data;
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
