import 'package:e_comm_s_d_u_i_ex/core/constants/app_keys.dart';
import 'package:e_comm_s_d_u_i_ex/core/helpers/widget_registry.dart';
import 'package:e_comm_s_d_u_i_ex/extensions/edge_insets_x.dart';
import 'package:e_comm_s_d_u_i_ex/extensions/node_prop.dart';
import 'package:flutter/material.dart';

SduiWidgetBuilder buildScreenBuilder() => (node, context, renderer) {
  final props = node.props;
  final title = props.getProp(AppKeys.title);
  final padding = props.getEdgeInsets(AppKeys.padding, getAllMap(16));
  return Scaffold(
    appBar: AppBar(title: Text(title)),
    body: ListView(
      padding: padding,
      children: renderer.renderChildren(node, context),
    ),
  );
};
