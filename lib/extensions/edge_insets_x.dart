import 'package:e_comm_s_d_u_i_ex/core/constants/app_keys.dart';
import 'package:e_comm_s_d_u_i_ex/extensions/node_prop.dart';
import 'package:flutter/material.dart';

extension EdgeInsetsX on MapX {
  EdgeInsetsGeometry? getEdgeInsets(String key) {
    final raw = this[key] as dynamic;
    if (raw is num) {
      return EdgeInsets.all(raw.toDouble());
    } else if (raw is MapX) {
      final l = raw.getDouble(AppKeys.left);
      final t = raw.getDouble(AppKeys.top);
      final r = raw.getDouble(AppKeys.right);
      final b = raw.getDouble(AppKeys.bottom);
      return EdgeInsetsGeometry.fromSTEB(l, t, r, b);
    }
    return null;
  }
}
