import 'package:flutter/material.dart';

isLandScape(context) {
  Orientation orientation = MediaQuery.of(context).orientation;
  print("LandScape ${orientation == Orientation.landscape}");
  return orientation == Orientation.landscape;
}
