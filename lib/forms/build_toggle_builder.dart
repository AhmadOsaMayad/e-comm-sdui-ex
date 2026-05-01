import 'package:e_comm_s_d_u_i_ex/core/constants/app_keys.dart';
import 'package:e_comm_s_d_u_i_ex/core/helpers/form_action_handler.dart';
import 'package:e_comm_s_d_u_i_ex/core/helpers/widget_registry.dart';
import 'package:e_comm_s_d_u_i_ex/enums/form_action_type.dart';
import 'package:e_comm_s_d_u_i_ex/extensions/node_prop.dart';
import 'package:e_comm_s_d_u_i_ex/models/form_action.dart';
import 'package:e_comm_s_d_u_i_ex/secret_notes.dart';
import 'package:flutter/material.dart';

SduiWidgetBuilder buildToggleBuilder(FormActionHandler onAction) {
  return (node, context, renderer) {
    final field = node.props.getString(AppKeys.field);
    final label = node.props.getString(AppKeys.label);
    // final groupName = node.props.getString(AppKeys.group);

    kBuildToggleBuilderSecretNote;

    bool value = false;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        children: [
          Switch(
            value: value,
            onChanged: (newValue) {
              onAction(
                FormAction(
                  FormActionType.update,
                  field: field,
                  value: newValue,
                ),
              );
            },
          ),
          Text(label),
        ],
      ),
    );
  };
}
