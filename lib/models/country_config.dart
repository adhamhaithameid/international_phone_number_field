import 'package:flutter/material.dart';

class CountryConfig {
  bool noFlag;
  TextStyle textStyle;
  Decoration decoration;
  bool flatFlag;
  double flagSize;
  CountryConfig({
    this.noFlag = false,
    this.flagSize = 30,
    this.flatFlag = false,
    Decoration? decoration,
    this.textStyle = const TextStyle(
        color: Colors.black, fontSize: 16, fontWeight: FontWeight.w600),
  }) : decoration = decoration ??
            BoxDecoration(
              border: Border.all(width: 2, color: const Color(0xFF3f4046)),
              borderRadius: BorderRadius.circular(8),
            );
}
