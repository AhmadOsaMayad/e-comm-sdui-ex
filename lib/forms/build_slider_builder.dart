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

SduiWidgetBuilder buildSliderBuilder(FormActionHandler onAction) =>
    (node, context, renderer) {
      final props = node.props;
      final field = props.getString(AppKeys.field);
      final label = props.getString(AppKeys.label);
      final min = props.getDouble(AppKeys.min, 0.0);
      final max = props.getDouble(AppKeys.max, 100.0);
      final step = props.getDouble(AppKeys.step, 1.0);

      kBuildSliderBuilderSecretNote;

      final state = context.read<FilterCubit>().state;
      final double value = (field == 'priceMin')
          ? state.minPrice
          : (field == 'priceMax')
          ? state.maxPrice
          : 50.0;

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
                FormAction(
                  type: FormActionType.update,
                  field: field,
                  value: newValue,
                ),
              );
            },
          ),
        ],
      );
    };
