import 'package:e_comm_s_d_u_i_ex/core/constants/app_keys.dart';
import 'package:e_comm_s_d_u_i_ex/core/helpers/widget_registry.dart';
import 'package:e_comm_s_d_u_i_ex/layouts/build_banner_builder.dart';
import 'package:e_comm_s_d_u_i_ex/layouts/build_grid_builder.dart';
import 'package:e_comm_s_d_u_i_ex/layouts/build_list_builder.dart';
import 'package:e_comm_s_d_u_i_ex/layouts/build_product_card_builder.dart';
import 'package:e_comm_s_d_u_i_ex/layouts/build_screen_builder.dart';
import 'package:e_comm_s_d_u_i_ex/layouts/build_section_builder.dart';

WidgetRegistry buildLayoutRegistry() {
  final registry = WidgetRegistry();

  registry.register(AppKeys.screen, buildScreenBuilder());

  registry.register(AppKeys.banner, buildBannerBuilder());

  registry.register(AppKeys.section, buildSectionBuilder());

  registry.register(AppKeys.grid, buildGridBuilder());

  registry.register(AppKeys.list, buildListBuilder());

  registry.register(AppKeys.productCard, buildProductCardBuilder());

  return registry;
}
