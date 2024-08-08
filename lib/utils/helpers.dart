import 'package:flutter/material.dart';

class Helpers {
  const Helpers._();

  static bool isPhone(BuildContext context) {
    final shortestSide = MediaQuery.of(context).size.shortestSide;

    return shortestSide < 600;
  }
}
