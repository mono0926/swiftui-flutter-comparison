import 'package:flutter/cupertino.dart';

import 'pages/home/home_page.dart';
import 'pages/tutorial1/tutorial1_page.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  final _pushRoutes = {
    Tutorial1Page.routeName: const Tutorial1Page(),
  };

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      title: 'Flutter',
      home: const HomePage(),
      onGenerateRoute: (settings) {
        final routeName = settings.name;
        final pushPage = _pushRoutes[routeName];
        if (pushPage != null) {
          return CupertinoPageRoute<dynamic>(
            settings: settings,
            builder: (context) => pushPage,
          );
        }
        return null;
      },
    );
  }
}
