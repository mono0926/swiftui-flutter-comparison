import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'pages/home/home_page.dart';
import 'pages/tutorial1/tutorial1_page.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  final _pushRoutes = {
    Tutorial1Page.routeName: const Tutorial1Page(),
  };

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: _buildTheme(),
      child: CupertinoApp(
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
      ),
    );
  }

  ThemeData _buildTheme() {
    final base = ThemeData.light();
    return base.copyWith(
      textTheme: base.textTheme.copyWith(
        title: base.textTheme.title.copyWith(
          fontSize: 28,
        ),
        subhead: base.textTheme.subhead.copyWith(
          fontSize: 16,
        ),
      ),
    );
  }
}
