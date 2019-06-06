import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:swiftui_flutter/widgets/widgets.dart';

import 'landmark_detail.dart';
import 'models/models.dart';

class LandmarkRow extends StatelessWidget {
  const LandmarkRow({
    Key key,
    @required this.landmark,
  }) : super(key: key);

  final Landmark landmark;

  @override
  Widget build(BuildContext context) {
    return CupertinoCell(
      onTap: () {
        Navigator.of(context).push<dynamic>(
          CupertinoPageRoute<dynamic>(
            builder: (context) {
              return LandmarkDetail(landmark: landmark);
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
          Spacer(),
          Icon(
            CupertinoIcons.forward,
            color: Colors.black26,
          )
        ],
      ),
    );
  }
}
