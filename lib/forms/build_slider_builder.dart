// lib/sdui/form/slider_builder.dart

import 'package:e_comm_s_d_u_i_ex/core/constants/app_keys.dart';
import 'package:e_comm_s_d_u_i_ex/core/helpers/form_action_handler.dart';
import 'package:e_comm_s_d_u_i_ex/core/helpers/widget_registry.dart';
import 'package:e_comm_s_d_u_i_ex/enums/form_action_type.dart';
import 'package:e_comm_s_d_u_i_ex/extensions/node_prop.dart';
import 'package:e_comm_s_d_u_i_ex/models/form_action.dart';
import 'package:e_comm_s_d_u_i_ex/secret_notes.dart';
import 'package:flutter/material.dart';

SduiWidgetBuilder buildSliderBuilder(FormActionHandler onAction) {
  return (node, context, renderer) {
    final field = node.props.getString(AppKeys.field);
    final label = node.props.getString(AppKeys.label);
    final min = node.props.getDouble(AppKeys.min, 0.0);
    final max = node.props.getDouble(AppKeys.max, 100.0);
    final step = node.props.getDouble(AppKeys.step, 1.0);

    kBuildSliderBuilderSecretNote;

    double value = 50.0; // mock value

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label),
        Slider(
          value: value,
          min: min,
          max: max,
          divisions: ((max - min) / step).round(),
          label: '${value.toInt()}',
          onChanged: (newValue) {
            onAction(
              FormAction(FormActionType.update, field: field, value: newValue),
            );
          },
        ),
      ],
    );
  };
}
