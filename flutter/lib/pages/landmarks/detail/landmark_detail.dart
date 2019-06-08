import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
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
    final data = Provider.of<UserData>(context);
    final landmark = data.getLandmark(id);
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text(landmark.name),
      ),
      child: SafeArea(
        child: Content(
          id: id,
        ),
      ),
    );
  }
}
