import 'package:e_comm_s_d_u_i_ex/extensions/shop_theme.dart';
import 'package:flutter/material.dart';

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

  Color resolve(TokenType token) {
    final theme = Theme.of(this).extension<ShopTheme>()!;
    switch (token) {
      case TokenType.primary:
        return theme.primary;
      case TokenType.secondary:
        return theme.secondary;
      case TokenType.success:
        return theme.success;
      case TokenType.error:
        return theme.error;
      case TokenType.background:
        return theme.background;
      case TokenType.surface:
        return theme.surface;
    }
  }
}
