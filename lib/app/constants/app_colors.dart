import 'package:flutter/material.dart';

Color grey = Colors.grey;
Color black = Colors.black;
Color grey70 = Colors.grey.shade700;
Color grey8 = Colors.grey.shade800;
Color grey30 = Colors.grey.shade300;
Color grey10 = Colors.grey.shade100;
Color grey2 = Colors.grey.shade200;
Color grey60 = Colors.grey.shade600;

const Color red = Colors.red;
const Color blue = Colors.blue;

class AppColors {
  static const String _color1 = '#FF725E';

  static const Color PRIMARY_COLOR = Color(0xfffc6011);
  static const Color PRIMARY_COLOR_LIGHT = Color(0xFFA5CFF1);
  static const Color PRIMARY_COLOR_DARK = Color(0xFF0D3656);
  static const Color ACCENT_COLOR = Color(0xFF1717BA);
  static const Color WHITE = Color(0xFFFFFFFF);
  static const Color BLACK = Color(0xFF000000);
  static const Color GREY = Color(0xFF9F9F9F);
  static const Color GREY50 = Color(0xFFFAFAFA);
  static const Color RED = Color(0xFFFF0000);

  static hexcolor1() {
    return getColorFromHex(_color1);
  }

  static Color getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll('#', '');

    if (hexColor.length == 6) {
      hexColor = 'FF' + hexColor;
    }

    return Color(int.parse(hexColor, radix: 16));
  }
}
