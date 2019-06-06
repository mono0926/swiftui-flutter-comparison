import 'package:flutter/cupertino.dart';

import 'content.dart';

class Tutorial1Page extends StatelessWidget {
  const Tutorial1Page();

  static const routeName = '/Creating and Combining Views';

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text(routeName.replaceAll('/', '')),
      ),
      child: SafeArea(
        child: const Content(),
      ),
    );
  }
}
