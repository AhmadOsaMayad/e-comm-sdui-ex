import 'package:e_comm_s_d_u_i_ex/core/constants/app_keys.dart';
import 'package:e_comm_s_d_u_i_ex/extensions/node_prop.dart';
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
