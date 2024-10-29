import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData appTheme() {
    return ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        searchBarTheme: SearchBarThemeData(
            elevation: WidgetStateProperty.all<double>(0.0),
            backgroundColor:
                WidgetStateProperty.all<Color>(Colors.blueGrey.shade50),
            shape: WidgetStateProperty.all<OutlinedBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(4.0)))),
            constraints: BoxConstraints(maxHeight: 56)));
  }
}
