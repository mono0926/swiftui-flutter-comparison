import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:swiftui_flutter/pages/landmarks/models/models.dart';

import 'content.dart';

final selectedLandmarkId = StateProvider<int?>((ref) => null);

class LandmarkDetail extends ConsumerWidget {
  const LandmarkDetail({Key? key}) : super(key: key);

  static const routeName = 'LandmarkDetail';
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final id = ref.watch(selectedLandmarkId).state!;
    final landmark = ref.watch(landmarkProviders(id));
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text(landmark.name),
      ),
      child: const SafeArea(
        child: Content(),
      ),
    );
  }
}
