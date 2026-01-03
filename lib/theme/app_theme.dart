import 'package:flutter/material.dart';

class AppTheme {
  static const Color stepsBackgroundColor = Color(0xFFE8F5E8);
  static const Color stepsAccentColor = Color(0xFF4CAF50);
  
  static const Color sleepBackgroundColor = Color(0xFFE3F2FD);
  static const Color sleepAccentColor = Color(0xFF2196F3);
  
  static const Color caloriesBackgroundColor = Color(0xFFFFF3E0);
  static const Color caloriesAccentColor = Color(0xFFFF9800);
  
  static const Color cycleBackgroundColor = Color(0xFFFCE4EC);
  static const Color cycleAccentColor = Color(0xFFE91E63);
  
  static const Color primaryColor = Color(0xFF007AFF);
  static const Color backgroundColor = Color(0xFFFFFFFF);
  static const Color textPrimaryColor = Color(0xFF000000);
  static const Color textSecondaryColor = Color(0xFF8E8E93);
  static const Color cardShadowColor = Color(0x1A000000);

  static ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.light(
        primary: primaryColor,
        secondary: primaryColor,
        surface: backgroundColor,
        onPrimary: Colors.white,
        onSecondary: Colors.white,
        onSurface: textPrimaryColor,
      ),
      scaffoldBackgroundColor: backgroundColor,
      appBarTheme: const AppBarTheme(
        backgroundColor: backgroundColor,
        elevation: 0,
        iconTheme: IconThemeData(color: primaryColor),
        titleTextStyle: TextStyle(
          color: textPrimaryColor,
          fontSize: 34,
          fontWeight: FontWeight.bold,
        ),
      ),
      textTheme: const TextTheme(
        headlineLarge: TextStyle(
          fontSize: 34,
          fontWeight: FontWeight.bold,
          color: textPrimaryColor,
        ),
        headlineMedium: TextStyle(
          fontSize: 28,
          fontWeight: FontWeight.w600,
          color: textPrimaryColor,
        ),
        titleLarge: TextStyle(
          fontSize: 17,
          fontWeight: FontWeight.w600,
          color: textPrimaryColor,
        ),
        titleMedium: TextStyle(
          fontSize: 17,
          fontWeight: FontWeight.normal,
          color: textPrimaryColor,
        ),
        bodyLarge: TextStyle(
          fontSize: 17,
          color: textPrimaryColor,
        ),
        bodyMedium: TextStyle(
          fontSize: 15,
          color: textPrimaryColor,
        ),
        bodySmall: TextStyle(
          fontSize: 13,
          color: textSecondaryColor,
        ),
      ),
      cardTheme: CardThemeData(
        elevation: 2,
        shadowColor: cardShadowColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
    );
  }
}
