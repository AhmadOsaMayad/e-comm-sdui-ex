import 'package:e_comm_s_d_u_i_ex/core/constants/app_keys.dart';
import 'package:e_comm_s_d_u_i_ex/core/helpers/widget_registry.dart';
import 'package:e_comm_s_d_u_i_ex/extensions/edge_insets_x.dart';
import 'package:e_comm_s_d_u_i_ex/extensions/node_prop.dart';
import 'package:flutter/material.dart';

SduiWidgetBuilder buildGridBuilder() => (node, context, renderer) {
  final props = node.props;
  final columns = props.getInt(AppKeys.columns, 2);
  final gap = props.getDouble(AppKeys.gap, 8.0);
  final padding = props.getEdgeInsets(AppKeys.padding, getAllMap(8));

  return GridView.count(
    shrinkWrap: true,
    physics: const NeverScrollableScrollPhysics(),
    crossAxisCount: columns,
    mainAxisSpacing: gap,
    crossAxisSpacing: gap,
    padding: padding,
    children: renderer.renderChildren(node, context),
  );
};
