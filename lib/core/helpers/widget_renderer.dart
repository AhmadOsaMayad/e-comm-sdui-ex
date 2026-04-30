import 'package:e_comm_s_d_u_i_ex/core/constants/constants.dart';
import 'package:e_comm_s_d_u_i_ex/core/helpers/widget_registry.dart';
import 'package:e_comm_s_d_u_i_ex/models/sdui_schema_model/sdui_schema.dart';
import 'package:flutter/material.dart';

class WidgetRenderer {
  final WidgetRegistry registry;

  WidgetRenderer(this.registry);

  Widget render(SduiSchema node, BuildContext context) {
    final builder = registry[node.type];
    if (builder != null) {
      return builder(node, context, this);
    }
    return Text('$kUnknownWidget: ${node.type}');
  }

  List<Widget> renderChildren(SduiSchema node, BuildContext context) {
    return node.children.map((child) => render(child, context)).toList();
  }
}
