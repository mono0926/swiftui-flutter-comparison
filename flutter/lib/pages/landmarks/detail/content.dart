import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:swiftui_flutter/pages/landmarks/detail/landmark_detail.dart';

import '../models/models.dart';
import 'circle_image.dart';
import 'map_view.dart';

class Content extends ConsumerWidget {
  const Content({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textTheme = Theme.of(context).textTheme;
    final id = ref.watch(selectedLandmarkId)!;
    final landmark = ref.watch(landmarkProviders(id));
    final isFavorite = ref.watch(isFavoriteProviders(id));
    return Column(
      children: [
        Stack(
          alignment: Alignment.bottomCenter,
          clipBehavior: Clip.none,
          children: [
            SizedBox(
              height: 300,
              child: MapView(latLng: landmark.latLng),
            ),
            Positioned(
              bottom: -130,
              child: CircleImage(imageName: landmark.imageName),
            ),
          ],
        ),
        const SizedBox(height: 130),
        Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    landmark.name,
                    style: textTheme.titleLarge,
                  ),
                  CupertinoButton(
                    onPressed: () {
                      ref.read(favoriteController.notifier).update(
                            id: id,
                            isFavorite: !isFavorite,
                          );
                    },
                    child: Icon(
                      isFavorite ? Icons.star : Icons.star_border,
                      color: isFavorite ? Colors.yellow[700] : Colors.grey,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      landmark.park,
                      style: textTheme.titleMedium,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const SizedBox(width: 4),
                  Text(
                    landmark.state,
                    style: textTheme.titleMedium,
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
