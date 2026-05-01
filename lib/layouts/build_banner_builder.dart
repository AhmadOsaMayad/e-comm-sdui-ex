import 'package:e_comm_s_d_u_i_ex/core/constants/app_keys.dart';
import 'package:e_comm_s_d_u_i_ex/core/helpers/get_token_type.dart';
import 'package:e_comm_s_d_u_i_ex/core/helpers/widget_registry.dart';
import 'package:e_comm_s_d_u_i_ex/extensions/edge_insets_x.dart';
import 'package:e_comm_s_d_u_i_ex/extensions/node_prop.dart';
import 'package:e_comm_s_d_u_i_ex/extensions/text_style_x.dart';
import 'package:flutter/material.dart';

SduiWidgetBuilder buildBannerBuilder() => (node, context, renderer) {
  final props = node.props;
  final textStyle = context.heading1;
  final headline = props.getProp(AppKeys.headline);
  final subtitle = props.getProp(AppKeys.subtitle);
  final padding = props.getEdgeInsets(AppKeys.padding, getAllMap(16));
  final margin = props.getEdgeInsets(AppKeys.margin, getAllMap(12));
  final tokenStr = props.getString(AppKeys.colorToken, AppKeys.primary);
  final token = getTokenType(tokenStr);
  final ctaText = node.props.getString(AppKeys.ctaText);
  final bgColor = context.resolve(token);
  return Container(
    margin: margin,
    decoration: BoxDecoration(
      color: bgColor,
      borderRadius: BorderRadius.circular(16),
    ),
    child: Padding(
      padding: padding!,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(headline, style: textStyle.copyWith(color: Colors.white)),
          const SizedBox(height: 4),
          Text(subtitle, style: context.body.copyWith(color: Colors.white70)),
          const SizedBox(height: 12),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              foregroundColor: bgColor,
            ),
            onPressed: () {},
            child: Text(ctaText),
          ),
        ],
      ),
    ),
  );
};
