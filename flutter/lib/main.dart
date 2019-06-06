import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'pages/pages.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  final _pushRoutes = {
    '/': const HomePage(),
    EssentialsPage.routeName: const EssentialsPage(),
  };

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: _buildTheme(),
      child: CupertinoApp(
        title: 'Flutter',
        onGenerateRoute: (settings) {
          final routeName = settings.name;
          final pushPage = _pushRoutes[routeName];
          if (pushPage != null) {
            final title = routeName.replaceAll('/', '');
            return CupertinoPageRoute<dynamic>(
              settings: settings,
              builder: (context) => pushPage,
              title: title.isEmpty ? 'Flutter' : title,
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
      dividerColor: Colors.black26,
    );
  }
}
