// ignore: file_names
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class VehicleOwner extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  var numberOfCars;

  VehicleOwner.fewCars({super.key}) {
    numberOfCars = 3;
  }
  VehicleOwner.manyCars({super.key}) {
    numberOfCars > 3;
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

void enumUser() => VehicleOwner.fewCars;
