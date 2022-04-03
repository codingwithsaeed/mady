import 'package:flutter/material.dart';

final primaryColor = Colors.purple.shade800.material;

final lightTheme = ThemeData(
    brightness: Brightness.light,
    fontFamily: 'vazir',
    primaryColor: primaryColor,
    colorScheme: ColorScheme.fromSwatch(primarySwatch: primaryColor),
    scaffoldBackgroundColor: Colors.grey.shade200,
    textTheme: const TextTheme(
      bodyText1: TextStyle(
        color: Colors.black54,
        fontSize: 20.0,
      ),
      button: TextStyle(
        fontWeight: FontWeight.w600,
        color: Colors.black54,
        fontSize: 20.0,
      ),
    ),
    appBarTheme: const AppBarTheme(
      centerTitle: true,
      iconTheme: IconThemeData(color: Colors.white),
    ));

extension BetterColor on Color {
  MaterialColor get material {
    List strengths = <double>[.05];
    Map<int, Color> swatch = {};
    final int r = red, g = green, b = blue;

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

    return MaterialColor(value, swatch);
  }
}
