import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:route_observer_mixin/route_observer_mixin.dart';
import 'package:swiftui_flutter/pages/landmarks/models/models.dart';

import 'pages/pages.dart';

void main() => runApp(
      RouteObserverProvider(
        child: App(),
      ),
    );

class App extends StatelessWidget {
  final _pushRoutes = {
    '/': const HomePage(),
    LandmarksPage.routeName: const LandmarksPage(),
  };

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: _buildTheme(),
      child: ChangeNotifierProvider(
        create: (context) => UserData(),
        child: CupertinoApp(
          title: 'Flutter',
          navigatorObservers: [RouteObserverProvider.of(context)],
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
