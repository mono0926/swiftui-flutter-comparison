import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mono_kit/mono_kit.dart';
import 'package:provider/provider.dart';
import 'package:route_observer_mixin/route_observer_mixin.dart';

import 'pages/pages.dart';

void main() => runApp(
      MultiProvider(
        providers: [
          RouteObserverProvider(),
        ],
        child: const ProviderScope(
          child: App(),
        ),
      ),
    );

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  static final _pushRoutes = {
    '/': const HomePage(),
    LandmarksPage.routeName: const LandmarksPage(),
  };

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: _buildTheme(),
      child: CupertinoApp(
        title: 'Flutter',
        navigatorObservers: [RouteObserverProvider.of(context)],
        onGenerateRoute: (settings) {
          final routeName = settings.name!;
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
    return base
        .copyWith(
          textTheme: base.textTheme.copyWith(
            headline6: base.textTheme.headline6!.copyWith(
              fontSize: 28,
            ),
            subtitle1: base.textTheme.subtitle1!.copyWith(
              fontSize: 16,
            ),
          ),
          dividerColor: Colors.black26,
        )
        .followLatestSpec();
  }
}
