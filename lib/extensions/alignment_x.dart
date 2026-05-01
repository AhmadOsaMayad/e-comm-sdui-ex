import 'package:e_comm_s_d_u_i_ex/core/constants/app_keys.dart';
import 'package:e_comm_s_d_u_i_ex/extensions/node_prop.dart';
import 'package:flutter/material.dart';

extension AlignmentX on MapX {
  AlignmentGeometry? getAlignment(String key) {
    final align = getString(key);
    switch (align) {
      case AppKeys.center:
        return Alignment.center;
      case AppKeys.topCenter:
        return Alignment.topCenter;
      case AppKeys.bottomCenter:
        return Alignment.bottomCenter;
      case AppKeys.centerLeft:
        return Alignment.centerLeft;
      case AppKeys.centerRight:
        return Alignment.centerRight;
      case AppKeys.topLeft:
        return Alignment.topLeft;
      case AppKeys.topRight:
        return Alignment.topRight;
      case AppKeys.bottomLeft:
        return Alignment.bottomLeft;
      case AppKeys.bottomRight:
        return Alignment.bottomRight;
      default:
        return null;
    }
  }
}
