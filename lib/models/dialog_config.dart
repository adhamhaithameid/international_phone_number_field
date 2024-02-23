import 'package:flutter/material.dart';

class DialogConfig {
  Color backgroundColor,
      searchBoxBackgroundColor,
      searchBoxIconColor,
      selectedItemColor,
      topBarColor;
  TextStyle textStyle, searchBoxTextStyle, searchBoxHintStyle, titleStyle;
  double searchBoxRadius;
  Widget selectedIcon;
  double countryItemHeight, itemFlagSize;
  bool flatFlag;
  String title, searchHintText;
  DialogConfig({
    this.backgroundColor = const Color(0xFF444448),
    this.searchBoxBackgroundColor = const Color(0xFF56565a),
    this.searchBoxIconColor = const Color(0xFFFAFAFA),
    this.countryItemHeight = 55,
    this.itemFlagSize = 30,
    this.flatFlag = false,
    this.selectedItemColor = const Color(0xFF56565a),
    this.topBarColor = const Color(0xFF1B1C24),
    this.searchBoxRadius = 7,
    this.title = "Country Codes",
    this.searchHintText = "Search",
    Widget? selectedIcon,
    TextStyle? textStyle,
    TextStyle? searchBoxTextStyle,
    TextStyle? titleStyle,
    TextStyle? searchBoxHintStyle,
  })  : textStyle = textStyle ??
            TextStyle(
                color: const Color(0xFFFAFAFA).withOpacity(0.7),
                fontSize: 14,
                fontWeight: FontWeight.w600),
        searchBoxTextStyle = searchBoxTextStyle ??
            TextStyle(
                color: const Color(0xFFFAFAFA).withOpacity(0.7),
                fontSize: 14,
                fontWeight: FontWeight.w600),
        titleStyle = titleStyle ??
            const TextStyle(
                color: Color(0xFFFAFAFA),
                fontSize: 18,
                fontWeight: FontWeight.w700),
        searchBoxHintStyle = searchBoxHintStyle ??
            TextStyle(
                color: const Color(0xFFFAFAFA).withOpacity(0.7),
                fontSize: 14,
                fontWeight: FontWeight.w600),
        selectedIcon = selectedIcon ??
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Image.asset(
                "packages/intl_phone_number_field/assets/check.png",
                width: 20,
                fit: BoxFit.fitWidth,
              ),
            );
}
