// ignore: file_names
import 'package:flutter/material.dart';

void mapExample() {
  final names = ['Max', 'Manu', 'Julie'];
  final result = names.map((name) => Text(name)).toList();

  print(result);
}
