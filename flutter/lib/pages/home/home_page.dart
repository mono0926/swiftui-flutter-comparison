import 'package:flutter/cupertino.dart';

import '../pages.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('Flutter'),
      ),
      child: CupertinoListSection(
        topMargin: 0,
        children: [
          for (final routeName in [
            LandmarksPage.routeName,
          ])
            CupertinoListTile(
              onTap: () => Navigator.of(context).pushNamed(routeName),
              title: Text(
                routeName.replaceAll('/', ''),
              ),
              trailing: const CupertinoListTileChevron(),
            ),
        ],
      ),
    );
  }
}
