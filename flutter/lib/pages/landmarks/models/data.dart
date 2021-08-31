import 'dart:convert';

import 'package:flutter/services.dart';

import 'models.dart';

class DataLoader {
  List<Landmark>? _loaded;

  Future<List<Landmark>> load() async {
    final loaded = _loaded;
    if (loaded != null) {
      return loaded;
    }
    final json = await rootBundle.loadString('assets/landmarkData.json');
    final decoded = (jsonDecode(json) as List).cast<Map<String, dynamic>>();
    return _loaded = decoded.map((json) => Landmark.fromJson(json)).toList();
  }
}
