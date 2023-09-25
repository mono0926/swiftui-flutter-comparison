import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'models.dart';

part 'data.g.dart';

@riverpod
Future<List<Landmark>> landmarkData(LandmarkDataRef ref) async {
  final json = await rootBundle.loadString('assets/landmarkData.json');
  final decoded = (jsonDecode(json) as List).cast<Map<String, dynamic>>();
  return decoded.map(Landmark.fromJson).toList();
}
