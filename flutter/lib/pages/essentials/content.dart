import 'package:flutter/material.dart';

import 'circle_image.dart';
import 'map_view.dart';
import 'models/models.dart';

class Content extends StatelessWidget {
  const Content({
    @required this.landmark,
  });

  final Landmark landmark;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: Alignment.bottomCenter,
          overflow: Overflow.visible,
          children: [
            SizedBox(
              height: 300,
              child: MapView(coordinates: landmark.coordinates),
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
              Text(
                landmark.name,
                style: Theme.of(context).textTheme.title,
              ),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      landmark.park,
                      style: Theme.of(context).textTheme.subhead,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const SizedBox(width: 4),
                  Text(
                    landmark.state,
                    style: Theme.of(context).textTheme.subhead,
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
