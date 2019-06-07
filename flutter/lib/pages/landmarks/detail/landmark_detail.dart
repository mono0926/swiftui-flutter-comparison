import 'package:flutter/cupertino.dart';
import 'package:swiftui_flutter/pages/landmarks/models/models.dart';

import 'content.dart';

class LandmarkDetail extends StatelessWidget {
  const LandmarkDetail({
    @required this.id,
  });

  final int id;

  static const routeName = 'LandmarkDetail';
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text(UserDataProvider.of(context).getLandmark(id).name),
      ),
      child: SafeArea(
        child: Content(
          id: id,
        ),
      ),
    );
  }
}
