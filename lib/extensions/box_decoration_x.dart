import 'package:e_comm_s_d_u_i_ex/core/constants/app_keys.dart';
import 'package:e_comm_s_d_u_i_ex/extensions/color_x.dart';
import 'package:e_comm_s_d_u_i_ex/extensions/node_prop.dart';
import 'package:flutter/material.dart';

extension BoxDecorationX on MapX {
  BoxDecoration? toBoxDecoration(Color? defaultColor) {
    final color = getString(AppKeys.color).toColor() ?? defaultColor;
    final radius = getProp(AppKeys.radius);
    final borderColor = getString(AppKeys.borderColor).toColor();
    final borderWidth = getDouble(AppKeys.borderWidth, 1.0);

    if (color == null) return null;

    return BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(radius),
      border: borderColor != null
          ? Border.all(color: borderColor, width: borderWidth)
          : null,
    );
  }
}
