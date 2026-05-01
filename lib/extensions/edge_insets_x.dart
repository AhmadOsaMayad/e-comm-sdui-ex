import 'package:e_comm_s_d_u_i_ex/core/constants/app_keys.dart';
import 'package:e_comm_s_d_u_i_ex/extensions/node_prop.dart';
import 'package:flutter/material.dart';

MapX getAllMap(double value) {
  return {
    AppKeys.left: value,
    AppKeys.top: value,
    AppKeys.right: value,
    AppKeys.bottom: value,
  };
}

extension EdgeInsetsX on MapX {
  EdgeInsetsGeometry? getEdgeInsets(String key, [dynamic fallBack = 0.0]) {
    var raw = (this[key] as dynamic) ?? fallBack;
    if (raw is num) {
      return EdgeInsets.all(raw.toDouble());
    } else if (raw is MapX) {
      final s = raw.getProp(AppKeys.left);
      final t = raw.getProp(AppKeys.top);
      final e = raw.getProp(AppKeys.right);
      final b = raw.getProp(AppKeys.bottom);
      return EdgeInsetsGeometry.fromSTEB(s, t, e, b);
    }
    return null;
  }
}
