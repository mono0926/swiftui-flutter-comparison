import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:swiftui_flutter/pages/landmarks/models/models.dart';

import 'content.dart';

class LandmarkDetail extends StatelessWidget {
  const LandmarkDetail({Key? key}) : super(key: key);

  static const routeName = 'LandmarkDetail';
  @override
  Widget build(BuildContext context) {
    final landmark = Provider.of<Landmark>(context);
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text(landmark.name),
      ),
      child: const SafeArea(
        child: Content(),
      ),
    );
  }
}
