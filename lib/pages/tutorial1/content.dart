import 'package:flutter/material.dart';

import 'circle_image.dart';
import 'map_view.dart';

class Content extends StatelessWidget {
  const Content();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: Alignment.bottomCenter,
          overflow: Overflow.visible,
          children: const [
            SizedBox(
              height: 300,
              child: MapView(),
            ),
            Positioned(
              bottom: -130,
              child: CircleImage(),
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
                'Turtle Rock',
                style: Theme.of(context).textTheme.title,
              ),
              Row(
                children: [
                  Text(
                    'Joshua Tree National Park',
                    style: Theme.of(context).textTheme.subhead,
                  ),
                  Spacer(),
                  Text(
                    'California',
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
