import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:swiftui_flutter/pages/landmarks/models/models.dart';

import 'content.dart';

final selectedLandmarkId = StateProvider<int?>((ref) => null);

class LandmarkDetail extends ConsumerWidget {
  const LandmarkDetail({super.key});

  static const routeName = 'LandmarkDetail';
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final id = ref.watch(selectedLandmarkId)!;
    final landmark = ref.watch(landmarkProviderFamily(id)).value!;
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
