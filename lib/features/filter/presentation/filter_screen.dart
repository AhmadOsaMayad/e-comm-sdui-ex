import 'package:e_comm_s_d_u_i_ex/core/constants/app_keys.dart';
import 'package:e_comm_s_d_u_i_ex/core/helpers/widget_registry.dart';
import 'package:e_comm_s_d_u_i_ex/core/helpers/widget_renderer.dart';
import 'package:e_comm_s_d_u_i_ex/core/utils/build_layout_registry.dart';
import 'package:e_comm_s_d_u_i_ex/core/utils/get_dummy_json.dart';
import 'package:e_comm_s_d_u_i_ex/enums/form_action_type.dart';
import 'package:e_comm_s_d_u_i_ex/forms/build_form_registry.dart';
import 'package:e_comm_s_d_u_i_ex/models/form_action.dart';
import 'package:e_comm_s_d_u_i_ex/models/sdui_schema_model/sdui_schema.dart';
import 'package:flutter/material.dart';

class FilterFormScreen extends StatefulWidget {
  const FilterFormScreen({super.key});

  @override
  State<FilterFormScreen> createState() => _FilterFormScreenState();
}

class _FilterFormScreenState extends State<FilterFormScreen> {
  /// [kFilterFormScreenSecretNote];

  final List<String> selectedColors = <String>[];

  // final formJson = ;

  void _handleFormAction(FormAction action) {
    switch (action.type) {
      case FormActionType.update:
        if (action.field.startsWith(AppKeys.colors)) {
          // simple toggle logic for demo
          if (action.value == 'red') {
            selectedColors.clear();
            if (!selectedColors.contains('red')) {
              selectedColors.add('red');
            }
          }
          setState(() {});
        }
        // ignore: avoid_print
        print('Form update: ${action.field} = ${action.value}');
        break;
      case FormActionType.submit:
        // ignore: avoid_print
        print('Submit filters: $selectedColors');
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    final node = SduiSchema.fromJson(kGetDummySheetJson);

    // 1. layout registry (screen, section, grid, list, product_card, banner)
    final layoutRegistry = buildLayoutRegistry();

    // 2. form registry (form, slider, toggle, chip_group, chip)
    final formRegistry = buildFormRegistry(_handleFormAction);

    // 3. merged registry
    final mergedRegistry = WidgetRegistry();
    mergedRegistry.merge(layoutRegistry); // layout first
    mergedRegistry.merge(formRegistry); // form second (overrides if same type)

    final renderer = WidgetRenderer(mergedRegistry);

    return Scaffold(
      appBar: AppBar(title: const Text('Filter Form (SDUI)')),
      body: renderer.render(node, context),
    );
  }
}
