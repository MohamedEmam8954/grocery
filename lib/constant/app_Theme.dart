import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData themeData(bool isDarkTheme, BuildContext context) {
    return ThemeData(
      scaffoldBackgroundColor: isDarkTheme
          ? const Color(0xFF00001a) // Dark background
          : const Color(0xFFFFFFFF), // Light background
      primaryColor: Colors.blue,
      colorScheme: ThemeData().colorScheme.copyWith(
            secondary:
                isDarkTheme ? const Color(0xFF1a1f3c) : const Color(0xFFE8FDFD),
            brightness: isDarkTheme ? Brightness.dark : Brightness.light,
          ),
      cardColor:
          isDarkTheme ? const Color(0xFF0a0d2c) : const Color(0xFFF2FDFD),
      canvasColor: isDarkTheme ? Colors.black : Colors.grey[50],
      buttonTheme: Theme.of(context).buttonTheme.copyWith(
            colorScheme: isDarkTheme
                ? const ColorScheme.dark()
                : const ColorScheme.light(),
          ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: isDarkTheme ? const Color(0xFF0a0d2c) : Colors.white,
        selectedItemColor:
            isDarkTheme ? Colors.lightBlue.shade200 : Colors.black,
        unselectedItemColor: isDarkTheme ? Colors.white70 : Colors.black54,
      ),
      textTheme: Theme.of(context).textTheme.apply(
            bodyColor: isDarkTheme ? Colors.white : Colors.black,
            displayColor: isDarkTheme ? Colors.white : Colors.black,
          ),
      listTileTheme: ListTileThemeData(
        textColor: isDarkTheme ? Colors.white : Colors.black,
      ),
      dialogBackgroundColor:
          isDarkTheme ? const Color(0xFF0a0d2c) : Colors.white,

      // Adding TextButtonTheme customization
      textButtonTheme: TextButtonThemeData(
        style: ButtonStyle(
          foregroundColor: WidgetStateProperty.resolveWith<Color?>(
            (Set<WidgetState> states) {
              if (states.contains(WidgetState.pressed)) {
                return isDarkTheme ? Colors.blue.shade200 : Colors.black54;
              }
              return Colors.blue;
            },
          ),
          // You can add other styles here like padding, textStyle, etc., if needed
        ),
      ),
    );
  }
}
