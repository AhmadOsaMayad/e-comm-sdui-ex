import 'package:e_comm_s_d_u_i_ex/core/constants/app_keys.dart';
import 'package:e_comm_s_d_u_i_ex/core/helpers/widget_registry.dart';
import 'package:e_comm_s_d_u_i_ex/extensions/edge_insets_x.dart';
import 'package:e_comm_s_d_u_i_ex/extensions/node_prop.dart';
import 'package:e_comm_s_d_u_i_ex/extensions/text_style_x.dart';
import 'package:flutter/material.dart';

SduiWidgetBuilder buildSectionBuilder() {
  return (node, context, renderer) {
    final props = node.props;
    final title = props.getProp(AppKeys.title);
    final marginVals = getOnlyMap(top: 16, start: 16);
    final margin = {
      AppKeys.margin: marginVals,
    }.getEdgeInsets(AppKeys.margin, getAllMap(0));

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (title.isNotEmpty)
          Padding(
            padding: margin!,
            child: Text(title, style: context.subheading),
          ),
        const SizedBox(height: 8),
        ...renderer.renderChildren(node, context),
      ],
    );
  };
}
