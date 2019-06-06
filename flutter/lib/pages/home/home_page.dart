import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:swiftui_flutter/widgets/widgets.dart';

import '../pages.dart';

class HomePage extends StatelessWidget {
  const HomePage();

  static const _pages = [
    LandmarksPage.routeName,
  ];

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: const Text('Flutter'),
      ),
      child: ListView.builder(
        itemCount: _pages.length,
        itemBuilder: (context, index) {
          return _ListItem(routeName: _pages[index]);
        },
      ),
    );
  }
}

class _ListItem extends StatelessWidget {
  const _ListItem({
    @required this.routeName,
  });

  final String routeName;

  @override
  Widget build(BuildContext context) {
    return CupertinoCell(
      onTap: () => Navigator.of(context).pushNamed(routeName),
      child: Row(
        children: [
          Expanded(child: Text(routeName.replaceAll('/', ''))),
          Icon(
            CupertinoIcons.forward,
            color: Colors.black26,
          ),
        ],
      ),
    );
  }
}
