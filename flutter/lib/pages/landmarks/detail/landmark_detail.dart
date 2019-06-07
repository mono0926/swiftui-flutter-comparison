import 'package:flutter/cupertino.dart';

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
        middle: Text(routeName.replaceAll('/', '')),
      ),
      child: SafeArea(
        child: Content(
          id: id,
        ),
      ),
    );
  }
}
