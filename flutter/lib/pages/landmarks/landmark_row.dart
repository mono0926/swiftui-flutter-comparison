import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:swiftui_flutter/widgets/widgets.dart';

import 'detail/landmark_detail.dart';
import 'models/models.dart';

class LandmarkRow extends StatelessWidget {
  const LandmarkRow({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final landmark = Provider.of<Landmark>(context);
    return CupertinoCell(
      onTap: () {
        Navigator.of(context).push<void>(
          CupertinoPageRoute<void>(
            builder: (context) {
              return Provider.value(
                value: landmark,
                child: const LandmarkDetail(),
              );
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
          if (landmark.isFavorite)
            Icon(
              Icons.star,
              color: Colors.yellow[700],
            ),
          Icon(
            CupertinoIcons.forward,
            color: Colors.black26,
          )
        ],
      ),
    );
  }
}
