import 'package:e_comm_s_d_u_i_ex/core/constants/app_keys.dart';
import 'package:e_comm_s_d_u_i_ex/extensions/node_prop.dart';
import 'package:e_comm_s_d_u_i_ex/extensions/shop_theme.dart';
import 'package:flutter/material.dart';

extension ThemeToken on MapX {
  Color resolveColor(String key, BuildContext context) {
    final token = getString(key);
    switch (token) {
      case AppKeys.primary:
        return Theme.of(context).colorScheme.primary;
      case AppKeys.error:
        return Theme.of(context).colorScheme.error;
      case AppKeys.background:
      default:
        return Theme.of(context).colorScheme.surface;
    }
  }
}

// builder for MaterialApp theme
ThemeData buildAppTheme() {
  final lightColors = const ColorScheme.light(
    primary: Color(0xFF007AFF),
    secondary: Color(0xFFFF9500),
    error: Color(0xFFFF3B30),
  );

  return ThemeData(
    useMaterial3: true,
    colorScheme: lightColors,
    textTheme: const TextTheme(
      titleLarge: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      titleMedium: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
      bodyMedium: TextStyle(fontSize: 14),
      bodySmall: TextStyle(fontSize: 12, color: Colors.grey),
    ),
    extensions: <ThemeExtension<dynamic>>[
      ShopTheme(
        primary: lightColors.primary,
        secondary: lightColors.secondary,
        success: const Color(0xFF34C759),
        error: lightColors.error,
        background: Colors.white,
        surface: Colors.grey.shade100,
      ),
    ],
  );
}
