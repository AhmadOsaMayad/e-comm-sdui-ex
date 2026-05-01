// lib/sdui/form/chip_group_builder.dart

import 'package:e_comm_s_d_u_i_ex/core/constants/app_keys.dart';
import 'package:e_comm_s_d_u_i_ex/core/helpers/form_action_handler.dart';
import 'package:e_comm_s_d_u_i_ex/core/helpers/widget_registry.dart';
import 'package:e_comm_s_d_u_i_ex/extensions/node_prop.dart';
import 'package:e_comm_s_d_u_i_ex/secret_notes.dart';
import 'package:flutter/material.dart';

SduiWidgetBuilder buildChipGroupBuilder(FormActionHandler onAction) {
  return (node, context, renderer) {
    // final field = node.props.getString('field');
    // final allowMultiple = node.props.getBool('multiple', false);

    kBuildChipGroupBuilderSecretNote;

    final chips = renderer.renderChildren(node, context);

    return Wrap(
      spacing: 8,
      runSpacing: 8,
      children: [
        Text(
          node.props.getString(AppKeys.label, AppKeys.select),
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        const SizedBox(height: 8),
        ...chips,
      ],
    );
  };
}
