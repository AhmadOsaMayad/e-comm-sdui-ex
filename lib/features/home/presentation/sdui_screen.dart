import 'package:e_comm_s_d_u_i_ex/core/utils/build_registry.dart';
import 'package:e_comm_s_d_u_i_ex/core/helpers/widget_renderer.dart';
import 'package:e_comm_s_d_u_i_ex/models/sdui_schema_model/sdui_schema.dart';
import 'package:flutter/material.dart';

class SduiScreen extends StatelessWidget {
  final Map<String, dynamic> json;

  const SduiScreen({super.key, required this.json});

  @override
  Widget build(BuildContext context) {
    final node = SduiSchema.fromJson(json);
    final registry = buildRegistry();
    final renderer = WidgetRenderer(registry);

    return renderer.render(node, context);
  }
}
