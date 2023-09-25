import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'detail/landmark_detail.dart';
import 'models/models.dart';

class LandmarkRow extends ConsumerWidget {
  LandmarkRow({
    required this.id,
  }) : super(key: ValueKey(id));

  final int id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final landmark = ref.watch(landmarkProviderFamily(id)).value;
    return landmark == null
        ? const SizedBox.shrink()
        : CupertinoListTile(
            onTap: () {
              ref.read(selectedLandmarkId.notifier).state = id;
              Navigator.of(context).push<void>(
                CupertinoPageRoute<void>(
                  title: LandmarkDetail.routeName,
                  builder: (context) {
                    return const LandmarkDetail();
                  },
                ),
              );
            },
            leading: Image.asset('assets/${landmark.imageName}.jpg'),
            leadingSize: 50,
            trailing: Row(
              children: [
                if (ref
                    .watch(favoriteProvider.select((s) => s.containsKey(id))))
                  Icon(
                    Icons.star,
                    color: Colors.yellow[700],
                  ),
                const CupertinoListTileChevron(),
              ],
            ),
            title: Text(landmark.name),
          );
  }
}
