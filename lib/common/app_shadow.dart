import 'package:flutter/material.dart';

class AppShadow {
  static List<BoxShadow> appShadow = [
    BoxShadow(
      color: Colors.grey.withOpacity(0.5),
      offset: const Offset(
        5.0,
        5.0,
      ),
      blurRadius: 10.0,
      spreadRadius: 2.0,
    ), //BoxShadow
    const BoxShadow(
      color: Colors.white,
      offset: Offset(0.0, 0.0),
      blurRadius: 0.0,
      spreadRadius: 0.0,
    ), //BoxShadow
  ];
}
