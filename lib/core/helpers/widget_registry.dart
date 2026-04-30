import 'package:e_comm_s_d_u_i_ex/core/helpers/widget_renderer.dart';
import 'package:e_comm_s_d_u_i_ex/models/sdui_schema_model/sdui_schema.dart';
import 'package:flutter/material.dart';

typedef SduiWidgetBuilder =
    Widget Function(
      SduiSchema nodeSchema,
      BuildContext context,
      WidgetRenderer renderer,
    );

class WidgetRegistry {
  final Map<String, SduiWidgetBuilder> _builders = {};

  void register(String type, SduiWidgetBuilder builder) {
    _builders[type] = builder;
  }

  SduiWidgetBuilder? operator [](String type) => _builders[type];
}
