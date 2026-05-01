import 'package:e_comm_s_d_u_i_ex/extensions/shop_theme.dart';
import 'package:flutter/material.dart';

ThemeData buildAppTheme() {
  final colorScheme = ColorScheme.fromSeed(
    seedColor: Colors.indigo,
    brightness: Brightness.light,
  );

  return ThemeData(
    useMaterial3: true,
    colorScheme: colorScheme,
    textTheme: const TextTheme(
      headlineLarge: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
      headlineMedium: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      titleMedium: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
      bodyLarge: TextStyle(fontSize: 16),
      bodyMedium: TextStyle(fontSize: 14),
      bodySmall: TextStyle(fontSize: 12, color: Colors.grey),
    ),
    extensions: <ThemeExtension<dynamic>>[
      ShopTheme(
        primary: colorScheme.primary,
        secondary: colorScheme.secondary,
        success: const Color(0xFF34C759),
        error: colorScheme.error,
        background: Colors.white,
        surface: Colors.grey.shade50,
      ),
    ],
  );
}
