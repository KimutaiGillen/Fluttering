import 'package:flutter/material.dart';

void mapExample() {
  final names = ['Max', 'Manu', 'Julie'];
  final result = names.map((name) => Text(name)).toList();

  // ignore: avoid_print
  print(result);
}
