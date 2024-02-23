import 'package:flutter/material.dart';

class PhoneConfig {
  Color focusedColor, enabledColor, errorColor;
  TextStyle textStyle, hintStyle;
  double radius, borderWidth;
  int? errorTextMaxLength;
  Decoration? decoration;
  Color? backgroundColor;
  String? hintText;
  bool autoFocus, showCursor;
  FocusNode? focusNode;
  TextStyle? errorStyle, labelStyle;
  String? labelText, errorText;
  bool popUpErrorText;
  EdgeInsetsGeometry errorPadding;
  AutovalidateMode autovalidateMode;
  final TextStyle? floatingLabelStyle;
  final TextInputAction textInputAction;
  PhoneConfig(
      {this.focusedColor = const Color(0xFF6D59BD),
      this.enabledColor = const Color(0xFF6D59BD),
      this.errorPadding = const EdgeInsets.only(top: 14),
      this.radius = 8,
      this.autovalidateMode = AutovalidateMode.onUserInteraction,
      this.textInputAction = TextInputAction.done,
      this.hintText = "Phone Number",
      this.borderWidth = 2,
      this.errorTextMaxLength = 2,
      this.backgroundColor,
      this.decoration,
      this.focusNode,
      this.popUpErrorText = true,
      this.autoFocus = false,
      this.showCursor = false,
      this.errorColor = const Color(0xFFFF5494),
      this.errorStyle = const TextStyle(color: Color(0xFFFF5494), fontSize: 12),
      this.floatingLabelStyle,
      this.labelStyle,
      this.labelText,
      this.textStyle = const TextStyle(
          color: Colors.black, fontSize: 16, fontWeight: FontWeight.w400),
      TextStyle? hintStyle})
      : hintStyle = hintStyle ??
            TextStyle(
                color: Colors.black.withOpacity(0.5),
                fontSize: 16,
                fontWeight: FontWeight.w400);
}
