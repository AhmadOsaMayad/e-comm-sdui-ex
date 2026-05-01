import 'package:e_comm_s_d_u_i_ex/core/constants/app_keys.dart';
import 'package:e_comm_s_d_u_i_ex/core/helpers/form_action_handler.dart';
import 'package:e_comm_s_d_u_i_ex/core/helpers/widget_registry.dart';
import 'package:e_comm_s_d_u_i_ex/enums/form_action_type.dart';
import 'package:e_comm_s_d_u_i_ex/extensions/color_x.dart';
import 'package:e_comm_s_d_u_i_ex/extensions/node_prop.dart';
import 'package:e_comm_s_d_u_i_ex/models/form_action.dart';
import 'package:e_comm_s_d_u_i_ex/secret_notes.dart';
import 'package:flutter/material.dart';

SduiWidgetBuilder buildChipBuilder(FormActionHandler onAction) {
  return (node, context, renderer) {
    final value = node.props.getString(AppKeys.value);
    final label = node.props.getString(AppKeys.label);
    final hex = node.props.getString(AppKeys.colorHex, '#6200EE');

    final color = hex.toColor() ?? Theme.of(context).colorScheme.primary;

    kBuildChipBuilderSecretNote;

    bool isSelected = false;

    return FilterChip(
      label: Text(label),
      selected: isSelected,
      selectedColor: color,
      onSelected: (bool selected) {
        onAction(
          FormAction(
            FormActionType.update,
            field: AppKeys.colors,
            value: value,
          ),
        );
      },
    );
  };
}
