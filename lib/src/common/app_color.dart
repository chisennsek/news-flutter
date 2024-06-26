import 'package:flutter/material.dart';

mixin AppColor {
  static const int _primary = 0xFF8C4BFF;
  static const Map<int, Color> _swatch = {
    50: colorPrimary,
    100: colorPrimary,
    200: colorPrimary,
    300: colorPrimary,
    400: colorPrimary,
    500: colorPrimary,
    600: colorPrimary,
    700: colorPrimary,
    800: colorPrimary,
    900: colorPrimary,
  };
  static const MaterialColor primarySwatch = MaterialColor(_primary, _swatch);

  static const Color colorPrimary = Color(_primary);
  static const Color colorDarkRed = Color(0xFFA41213);
  static const Color colorRed = Color(0xFFFE2C55);
  static const Color colorDarkGreen = Color(0xFF0E553A);
  static const Color colorGreen = Color(0xFF2BC48A);
  static const Color colorGrey = Color(0xFFA5AFBF);
  static const Color colorLightGrey = Color(0xFFF5F5F5);
  static const Color colorYellow = Color(0xFFFFE602);
  static const Color colorBlue = Color(0xFF263A91);
  static const Color colorDarkBlue = Color(0xFF03314B);
  static const Color colorBrown = Color(0xFF8F4E1E);
}
