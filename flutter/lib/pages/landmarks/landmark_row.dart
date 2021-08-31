import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:swiftui_flutter/widgets/widgets.dart';

import 'detail/landmark_detail.dart';
import 'models/models.dart';

class LandmarkRow extends ConsumerWidget {
  LandmarkRow({
    required this.id,
  }) : super(key: ValueKey(id));

  final int id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final landmark = ref.watch(landmarkProviders(id));
    return CupertinoCell(
      onTap: () {
        ref.read(selectedLandmarkId).state = id;
        Navigator.of(context).push<void>(
          CupertinoPageRoute<void>(
            builder: (context) {
              return const LandmarkDetail();
            },
            title: LandmarkDetail.routeName,
          ),
        );
      },
      minHeight: 70,
      child: Row(
        children: [
          SizedBox(
            width: 50,
            height: 50,
            child: Image.asset('assets/${landmark.imageName}.jpg'),
          ),
          const SizedBox(width: 8),
          Text(landmark.name),
          const Spacer(),
          if (ref.watch(favoriteController.select((s) => s.containsKey(id))))
            Icon(
              Icons.star,
              color: Colors.yellow[700],
            ),
          const Icon(
            CupertinoIcons.forward,
            color: Colors.black26,
          )
        ],
      ),
    );
  }
}
