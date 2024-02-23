import 'package:country_flags/country_flags.dart';
import 'package:flutter/material.dart';

import '../models/country_code_model.dart';

class FlagView extends StatelessWidget {
  final CountryCodeModel countryCodeModel;
  final double size;
  final bool isFlat;
  const FlagView(
      {required this.countryCodeModel,
      required this.size,
      required this.isFlat,
      super.key});

  @override
  Widget build(BuildContext context) {
    return isFlat
        ? CountryFlag.fromCountryCode(
            countryCodeModel.code.toUpperCase(),
            width: size * 1.17,
            borderRadius: 14,
          )
        : Text(
            countryCodeModel.code.toUpperCase().replaceAllMapped(
                RegExp(r'[A-Z]'),
                (match) => String.fromCharCode(
                    match.group(0)!.codeUnitAt(0) + 127397)),
            style: TextStyle(fontSize: size),
          );
  }
}
