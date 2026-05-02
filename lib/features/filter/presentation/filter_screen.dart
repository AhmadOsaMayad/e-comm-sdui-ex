import 'package:e_comm_s_d_u_i_ex/core/helpers/widget_registry.dart';
import 'package:e_comm_s_d_u_i_ex/core/helpers/widget_renderer.dart';
import 'package:e_comm_s_d_u_i_ex/core/utils/build_layout_registry.dart';
import 'package:e_comm_s_d_u_i_ex/extensions/node_prop.dart';
import 'package:e_comm_s_d_u_i_ex/features/filter/presentation/manager/cubits/filter_cubit/filter_cubit.dart';
import 'package:e_comm_s_d_u_i_ex/features/filter/presentation/manager/cubits/filter_cubit/filter_state.dart';
import 'package:e_comm_s_d_u_i_ex/forms/build_form_registry.dart';
import 'package:e_comm_s_d_u_i_ex/models/sdui_schema_model/sdui_schema.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FilterFormScreen extends StatelessWidget {
  const FilterFormScreen({super.key, required this.formJson});
  final MapX formJson;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => FilterCubit(),
      child: BlocBuilder<FilterCubit, FilterState>(
        builder: (context, state) {
          final layoutRegistry = buildLayoutRegistry();
          final formRegistry = buildFormRegistry(
            context.read<FilterCubit>().handleAction,
          );

          final mergedRegistry = WidgetRegistry()
            ..merge(layoutRegistry)
            ..merge(formRegistry);

          final renderer = WidgetRenderer(mergedRegistry);
          final node = SduiSchema.fromJson(formJson);

          return Scaffold(body: renderer.render(node, context));
        },
      ),
    );
  }
}
