import 'package:e_comm_s_d_u_i_ex/core/constants/app_keys.dart';
import 'package:e_comm_s_d_u_i_ex/core/helpers/get_token_type.dart';
import 'package:e_comm_s_d_u_i_ex/core/helpers/widget_registry.dart';
import 'package:e_comm_s_d_u_i_ex/extensions/node_prop.dart';
import 'package:e_comm_s_d_u_i_ex/extensions/text_style_x.dart';
import 'package:flutter/material.dart';

SduiWidgetBuilder buildProductCardBuilder() {
  return (node, context, renderer) {
    final props = node.props;
    final name = props.getProp(AppKeys.name);
    final price = props.getProp(AppKeys.price).toString();
    final tokenStr = props.getString(AppKeys.colorToken, AppKeys.primary);
    final token = getTokenType(tokenStr);

    final color = context.resolve(token);
    final textStyle = context.body;

    return Card(
      surfaceTintColor: color,
      child: ListTile(
        leading: const Icon(Icons.shopping_bag),
        title: Text(name, style: textStyle),
        subtitle: Text('\$$price'),
        trailing: Icon(Icons.add_shopping_cart, color: color),
      ),
    );
  };
}
