import 'package:flutter/material.dart';
// import 'package:timetick/utils/refresh/check_color.dart';

// Color get primaryColor => Color(int.parse(colorCode));
// Color get accentColor => Color(int.parse(colorCode)).withOpacity(0.2);
Color backgroundColor = const Color.fromARGB(255, 242, 242, 242);
Color shadowColor = const Color.fromARGB(255, 234, 236, 239);
Color lightGrey = const Color.fromARGB(255, 112, 122, 137);
Color darkGrey = const Color.fromARGB(255, 137, 145, 160);
Color darkBlack = const Color.fromARGB(255, 40, 40, 40);

MaterialColor createMaterialColor(Color color) {
  List strengths = <double>[.05];
  final swatch = <int, Color>{};
  final int r = color.red, g = color.green, b = color.blue;

  for (int i = 1; i < 10; i++) {
    strengths.add(0.1 * i);
  }
  for (var strength in strengths) {
    final double ds = 0.5 - strength;
    swatch[(strength * 1000).round()] = Color.fromRGBO(
      r + ((ds < 0 ? r : (255 - r)) * ds).round(),
      g + ((ds < 0 ? g : (255 - g)) * ds).round(),
      b + ((ds < 0 ? b : (255 - b)) * ds).round(),
      1,
    );
  }
  return MaterialColor(color.value, swatch);
}
