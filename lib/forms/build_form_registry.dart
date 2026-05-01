import 'package:e_comm_s_d_u_i_ex/core/constants/app_keys.dart';
import 'package:e_comm_s_d_u_i_ex/core/helpers/form_action_handler.dart';
import 'package:e_comm_s_d_u_i_ex/core/helpers/widget_registry.dart';
import 'package:e_comm_s_d_u_i_ex/forms/build_chip_builder.dart';
import 'package:e_comm_s_d_u_i_ex/forms/build_chip_group_builder.dart';
import 'package:e_comm_s_d_u_i_ex/forms/build_form_builder.dart';
import 'package:e_comm_s_d_u_i_ex/forms/build_slider_builder.dart';
import 'package:e_comm_s_d_u_i_ex/forms/build_toggle_builder.dart';

WidgetRegistry buildFormRegistry(FormActionHandler onAction) {
  final registry = WidgetRegistry();

  registry.register(AppKeys.form, buildFormBuilder(onAction));

  registry.register(AppKeys.slider, buildSliderBuilder(onAction));

  registry.register(AppKeys.toggle, buildToggleBuilder(onAction));

  registry.register(AppKeys.chipGroup, buildChipGroupBuilder(onAction));

  registry.register(AppKeys.chip, buildChipBuilder(onAction));

  return registry;
}
