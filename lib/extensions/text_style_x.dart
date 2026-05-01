import 'package:e_comm_s_d_u_i_ex/extensions/shop_theme.dart';
import 'package:flutter/material.dart';

enum ColorToken { primary, secondary, success, error }

extension TextStyleX on TextTheme {
  TextStyle get heading1 =>
      const TextStyle(fontSize: 24, fontWeight: FontWeight.bold);

  TextStyle get subheading =>
      const TextStyle(fontSize: 16, fontWeight: FontWeight.w500);

  TextStyle get caption => const TextStyle(fontSize: 12, color: Colors.grey);
}

extension TextStyles on BuildContext {
  TextStyle get heading1 =>
      Theme.of(this).textTheme.titleLarge ?? const TextStyle();

  TextStyle get body =>
      Theme.of(this).textTheme.bodyMedium ?? const TextStyle();

  TextStyle get subheading =>
      Theme.of(this).textTheme.titleMedium ?? const TextStyle();

  TextStyle get caption =>
      Theme.of(this).textTheme.bodySmall ?? const TextStyle();

  // your own helper: map a JSON token to a semantic color
  Color resolve(ColorToken token) {
    final theme = Theme.of(this).extension<ShopTheme>()!;
    switch (token) {
      case ColorToken.primary:
        return theme.primary;
      case ColorToken.secondary:
        return theme.secondary;
      case ColorToken.success:
        return theme.success;
      default:
        return theme.error;
    }
  }
}
