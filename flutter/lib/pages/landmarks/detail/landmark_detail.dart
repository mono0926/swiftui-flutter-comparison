import 'package:flutter/cupertino.dart';

import '../models/models.dart';
import 'content.dart';

class LandmarkDetail extends StatelessWidget {
  const LandmarkDetail({
    @required this.landmark,
  });

  final Landmark landmark;

  static const routeName = 'LandmarkDetail';
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text(routeName.replaceAll('/', '')),
      ),
      child: SafeArea(
        child: Content(
          landmark: landmark,
        ),
      ),
    );
  }
}
