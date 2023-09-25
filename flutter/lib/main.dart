import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mono_kit/mono_kit.dart';

import 'pages/pages.dart';

void main() => runApp(
      const ProviderScope(
        child: App(),
      ),
    );

class App extends StatelessWidget {
  const App({super.key});

  static final _routes = {
    '/': const HomePage(),
    LandmarksPage.routeName: const LandmarksPage(),
  };

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: _theme(),
      child: CupertinoApp(
        title: 'Flutter',
        theme: const CupertinoThemeData(
          barBackgroundColor: Colors.white,
        ),
        onGenerateRoute: (settings) {
          final routeName = settings.name!;
          final route = _routes[routeName];
          if (route != null) {
            final title = routeName.replaceAll('/', '');
            return CupertinoPageRoute<void>(
              settings: settings,
              builder: (context) => route,
              title: title.isEmpty ? 'Flutter' : title,
            );
          }
          return null;
        },
      ),
    );
  }

  ThemeData _theme() {
    final base = ThemeData.light();
    return base
        .copyWith(
          textTheme: base.textTheme.copyWith(
            titleLarge: base.textTheme.titleLarge!.copyWith(
              fontSize: 28,
            ),
            titleMedium: base.textTheme.titleMedium!.copyWith(
              fontSize: 16,
            ),
          ),
          dividerColor: Colors.black26,
        )
        .followLatestSpec();
  }
}
