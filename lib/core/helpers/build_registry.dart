import 'package:e_comm_s_d_u_i_ex/core/constants/app_keys.dart';
import 'package:e_comm_s_d_u_i_ex/core/helpers/widget_registry.dart';
import 'package:e_comm_s_d_u_i_ex/extensions/color_x.dart';
import 'package:e_comm_s_d_u_i_ex/extensions/edge_insets_x.dart';
import 'package:e_comm_s_d_u_i_ex/extensions/node_prop.dart';
import 'package:flutter/material.dart';

WidgetRegistry buildRegistry() {
  final registry = WidgetRegistry();

  registry.register(AppKeys.screen, (node, context, renderer) {
    final props = node.props;
    final title = props.getString(AppKeys.title);
    final padding =
        props.getEdgeInsets(AppKeys.padding) ?? const EdgeInsets.all(16);
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
    final headline = props.getString(AppKeys.headline);
    final subtitle = props.getString(AppKeys.subtitle);
    final bgHex = props.getString(AppKeys.bgColor);
    final bgColor = bgHex.toColor() ?? Colors.orange.shade100;
    final padding =
        props.getEdgeInsets(AppKeys.padding) ?? const EdgeInsets.all(16);
    final margin = props.getEdgeInsets(AppKeys.margin) ?? EdgeInsets.zero;

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
          Text(
            headline,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 4),
          Text(subtitle),
        ],
      ),
    );
  });

  registry.register(AppKeys.section, (node, context, renderer) {
    final title = node.props.getString(AppKeys.title);

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
    final name = props.getString(AppKeys.name);
    final price = props.getString(AppKeys.price);

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











// import 'package:e_comm_s_d_u_i_ex/core/helpers/widget_registry.dart';
// import 'package:e_comm_s_d_u_i_ex/core/services/setup_registry.dart';
// import 'package:flutter/material.dart';



// Widget buildLayoutFromJson(Map<String, dynamic> json, BuildContext context) {
//   final childrenJson = json["children"] as List? ?? [];
// final registry = WidgetRegistry(); 
//   final children = childrenJson

//       .map((c) => buildLayoutFromJson(c, context))
//       .toList();
//   // For a screen-like root, wrap in Scaffold
//   if (json["type"] == "screen") {
//     final title = json["properties"]["title"] as String? ?? "";

//     return Scaffold(
//       appBar: AppBar(title: Text(title)),
//       body: ListView(
//         padding: const EdgeInsets.all(16),
//         children: children,
//       ),
//     );
//   }

//   // Delegate to registry for other types
//   return registry.buildFromJson(json, context); 
//   }
