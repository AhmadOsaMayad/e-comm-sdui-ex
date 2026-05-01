import 'package:e_comm_s_d_u_i_ex/core/constants/app_keys.dart';
import 'package:e_comm_s_d_u_i_ex/core/helpers/widget_registry.dart';
import 'package:e_comm_s_d_u_i_ex/extensions/edge_insets_x.dart';
import 'package:e_comm_s_d_u_i_ex/extensions/node_prop.dart';
import 'package:e_comm_s_d_u_i_ex/extensions/text_style_x.dart';
import 'package:flutter/material.dart';

WidgetRegistry buildRegistry() {
  final registry = WidgetRegistry();

  registry.register(AppKeys.screen, (node, context, renderer) {
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
  });

  registry.register(AppKeys.banner, (node, context, renderer) {
    final props = node.props;
    final textStyle = context.heading1;
    final subTextStyle = context.caption;
    final headline = props.getProp(AppKeys.headline);
    final subtitle = props.getProp(AppKeys.subtitle);
    final padding = props.getEdgeInsets(AppKeys.padding, getAllMap(16));
    final margin = props.getEdgeInsets(AppKeys.margin, getAllMap(12));
    final tokenStr = props.getString(AppKeys.colorToken, AppKeys.primary);
    final token = switch (tokenStr) {
      AppKeys.primary => TokenType.primary,
      AppKeys.secondary => TokenType.secondary,
      // AppKeys.success => TokenType.success,
      AppKeys.error => TokenType.error,
      AppKeys.background => TokenType.surface,
      _ => TokenType.error,
    };
    final bgColor = context.resolve(token);
    return Container(
      padding: padding,
      margin: margin,
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(headline, style: textStyle.copyWith(color: Colors.white)),
          const SizedBox(height: 4),
          Text(subtitle, style: subTextStyle.copyWith(color: Colors.white)),
        ],
      ),
    );
  });

  registry.register(AppKeys.section, (node, context, renderer) {
    final title = node.props.getProp(AppKeys.title);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8),
        ...renderer.renderChildren(node, context),
      ],
    );
  });

  registry.register(AppKeys.productCard, (node, context, renderer) {
    final props = node.props;
    final name = props.getProp(AppKeys.name);
    final price = props.getProp(AppKeys.price).toString();

    return Card(
      child: ListTile(
        leading: const Icon(Icons.shopping_bag),
        title: Text(name),
        subtitle: Text(price),
      ),
    );
  });

  return registry;
}
