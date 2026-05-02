import 'package:e_comm_s_d_u_i_ex/core/constants/app_keys.dart';
import 'package:e_comm_s_d_u_i_ex/core/helpers/form_action_handler.dart';
import 'package:e_comm_s_d_u_i_ex/core/helpers/widget_registry.dart';
import 'package:e_comm_s_d_u_i_ex/enums/form_action_type.dart';
import 'package:e_comm_s_d_u_i_ex/extensions/color_x.dart';
import 'package:e_comm_s_d_u_i_ex/extensions/node_prop.dart';
import 'package:e_comm_s_d_u_i_ex/features/filter/presentation/manager/cubits/filter_cubit/filter_cubit.dart';
import 'package:e_comm_s_d_u_i_ex/models/form_action.dart';
import 'package:e_comm_s_d_u_i_ex/secret_notes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

SduiWidgetBuilder buildChipBuilder(FormActionHandler onAction) =>
    (node, context, renderer) {
      final props = node.props;
      final value = props.getString(AppKeys.value);
      final label = props.getString(AppKeys.label);
      final hex = props.getString(AppKeys.colorHex, '#6200EE');

      final color = hex.toColor() ?? Theme.of(context).colorScheme.primary;

      kBuildChipBuilderSecretNote;
      final selectedColors = context.read<FilterCubit>().state.colors;
      final selected = selectedColors.contains(value);

      return FilterChip(
        label: Text(label),
        selected: selected,
        selectedColor: color,
        onSelected: (bool selected) {
          onAction(
            FormAction(
              type: FormActionType.update,
              field: AppKeys.colors,
              value: value,
            ),
          );
        },
      );
    };
