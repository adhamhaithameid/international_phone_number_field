// ignore_for_file: non_constant_identifier_names

import 'package:json_annotation/json_annotation.dart';

part 'country_code_model.g.dart';

@JsonSerializable()
class CountryCodeModel {
  final String name;
  final String dial_code;
  final String code;

  CountryCodeModel(
      {required this.name, required this.dial_code, required this.code});

  CountryCodeModel fromJson(Map<String, dynamic> json) {
    return _$CountryCodeModelFromJson(json);
  }

  factory CountryCodeModel.fromJson(Map<String, dynamic> json) {
    return _$CountryCodeModelFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$CountryCodeModelToJson(this);
  }
}
