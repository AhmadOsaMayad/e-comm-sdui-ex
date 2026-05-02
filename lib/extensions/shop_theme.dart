import 'package:e_comm_s_d_u_i_ex/core/constants/app_keys.dart';
import 'package:flutter/material.dart';

@immutable
class ShopTheme extends ThemeExtension<ShopTheme> {
  final Color primary;
  final Color secondary;
  final Color success;
  final Color error;
  final Color background;
  final Color surface;

  const ShopTheme({
    required this.primary,
    required this.secondary,
    required this.success,
    required this.error,
    required this.background,
    required this.surface,
  });

  @override
  ShopTheme copyWith({
    Color? primary,
    Color? secondary,
    Color? success,
    Color? error,
    Color? background,
    Color? surface,
  }) {
    return ShopTheme(
      primary: primary ?? this.primary,
      secondary: secondary ?? this.secondary,
      success: success ?? this.success,
      error: error ?? this.error,
      background: background ?? this.background,
      surface: surface ?? this.surface,
    );
  }

  @override
  ShopTheme lerp(ThemeExtension<ShopTheme>? other, double t) {
    if (other is! ShopTheme) return this;

    return ShopTheme(
      primary: Color.lerp(primary, other.primary, t)!,
      secondary: Color.lerp(secondary, other.secondary, t)!,
      success: Color.lerp(success, other.success, t)!,
      error: Color.lerp(error, other.error, t)!,
      background: Color.lerp(background, other.background, t)!,
      surface: Color.lerp(surface, other.surface, t)!,
    );
  }

  @override
  String toString() =>
      'ShopTheme(${AppKeys.primary}: $primary, ${AppKeys.secondary}: $secondary, ${AppKeys.background}: $background)';
}
