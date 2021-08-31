import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'models.dart';

final landmarkDataProvider = FutureProvider((ref) async {
  final json = await rootBundle.loadString('assets/landmarkData.json');
  final decoded = (jsonDecode(json) as List).cast<Map<String, dynamic>>();
  return decoded.map((json) => Landmark.fromJson(json)).toList();
});
