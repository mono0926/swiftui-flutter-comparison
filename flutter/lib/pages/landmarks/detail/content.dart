import 'dart:collection';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/models.dart';
import 'circle_image.dart';
import 'map_view.dart';

class Content extends StatelessWidget {
  const Content({
    @required this.id,
  });

  final int id;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final data = UserDataProvider.of(context);
    final landmark = data.getLandmark(id);
    return Column(
      children: [
        Stack(
          alignment: Alignment.bottomCenter,
          overflow: Overflow.visible,
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
                children: <Widget>[
                  Text(
                    landmark.name,
                    style: textTheme.title,
                  ),
                  ValueListenableBuilder<UnmodifiableListView<Landmark>>(
                    valueListenable: data.landmarksAll,
                    builder: (context, landmarks, child) {
                      final landmark = data.getLandmark(id);
                      final isFavorite = landmark.isFavorite;
                      return CupertinoButton(
                        onPressed: () {
                          data.updateIsFavorite(id, isFavorite: !isFavorite);
                        },
                        child: Icon(
                          isFavorite ? Icons.star : Icons.star_border,
                          color: isFavorite ? Colors.yellow[700] : Colors.grey,
                        ),
                      );
                    },
                  )
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      landmark.park,
                      style: textTheme.subhead,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const SizedBox(width: 4),
                  Text(
                    landmark.state,
                    style: textTheme.subhead,
                  ),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
