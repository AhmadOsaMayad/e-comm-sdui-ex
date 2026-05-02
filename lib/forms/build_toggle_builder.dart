import 'package:e_comm_s_d_u_i_ex/core/constants/app_keys.dart';
import 'package:e_comm_s_d_u_i_ex/core/helpers/form_action_handler.dart';
import 'package:e_comm_s_d_u_i_ex/core/helpers/widget_registry.dart';
import 'package:e_comm_s_d_u_i_ex/enums/form_action_type.dart';
import 'package:e_comm_s_d_u_i_ex/extensions/node_prop.dart';
import 'package:e_comm_s_d_u_i_ex/features/filter/presentation/manager/cubits/filter_cubit/filter_cubit.dart';
import 'package:e_comm_s_d_u_i_ex/models/form_action.dart';
import 'package:e_comm_s_d_u_i_ex/secret_notes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

SduiWidgetBuilder buildToggleBuilder(FormActionHandler onAction) =>
    (node, context, renderer) {
      final props = node.props;
      final field = props.getString(AppKeys.field);
      final label = props.getString(AppKeys.label);
      // final groupName = props.getString(AppKeys.group);

      kBuildToggleBuilderSecretNote;
      final state = context.read<FilterCubit>().state;
      final bool value = (field == 'isMen')
          ? state.men
          : (field == 'isWomen')
          ? state.women
          : false;

      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 4),
        child: Row(
          children: [
            Switch(
              value: value,
              onChanged: (newValue) {
                onAction(
                  FormAction(
                    type: FormActionType.update,
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
