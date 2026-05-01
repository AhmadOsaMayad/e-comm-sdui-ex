import 'package:e_comm_s_d_u_i_ex/core/constants/app_keys.dart';
import 'package:e_comm_s_d_u_i_ex/extensions/shop_theme.dart';

TokenType getTokenType(String tokenStr) {
  return switch (tokenStr) {
    AppKeys.primary => TokenType.primary,
    AppKeys.secondary => TokenType.secondary,
    AppKeys.success => TokenType.success,
    AppKeys.error => TokenType.error,
    AppKeys.background => TokenType.surface,
    _ => TokenType.error,
  };
}
