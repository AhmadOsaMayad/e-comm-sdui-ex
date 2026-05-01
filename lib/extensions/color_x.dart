import 'package:flutter/material.dart';

extension ColorX on String? {
  Color? toColor() {
    if (this == null) return null;
    final hex = this!.trim().toLowerCase();

    if (hex.startsWith('#')) {
      final valueStr = hex.substring(1);
      try {
        final value = int.parse(
          valueStr.length == 6 ? 'ff$valueStr' : valueStr,
          radix: 16,
        );
        return Color(value);
      } on FormatException {
        return null;
      }
    }
    return null;
  }
}
