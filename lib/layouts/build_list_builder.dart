import 'package:e_comm_s_d_u_i_ex/core/constants/app_keys.dart';
import 'package:e_comm_s_d_u_i_ex/core/helpers/widget_registry.dart';
import 'package:e_comm_s_d_u_i_ex/extensions/node_prop.dart';
import 'package:flutter/material.dart';

SduiWidgetBuilder buildListBuilder() {
  return (node, context, renderer) {
    final scrollDirection = node.props.getString(
      AppKeys.scrollDirection,
      AppKeys.vertical,
    );
    final axis = scrollDirection == AppKeys.horizontal
        ? Axis.horizontal
        : Axis.vertical;

    return ListView(
      scrollDirection: axis,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.symmetric(horizontal: 12),
      children: renderer.renderChildren(node, context),
    );
  };
}
