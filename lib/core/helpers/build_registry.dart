import 'package:e_comm_s_d_u_i_ex/core/constants/app_keys.dart';
import 'package:e_comm_s_d_u_i_ex/core/constants/constants.dart';
import 'package:e_comm_s_d_u_i_ex/core/helpers/widget_registry.dart';
import 'package:flutter/material.dart';

WidgetRegistry buildRegistry() {
  final registry = WidgetRegistry();

  registry.register(AppKeys.screen, (node, context, renderer) {
    return Scaffold(
      appBar: AppBar(
        title: Text(node.props[AppKeys.title] as String? ?? kUnknown),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: renderer.renderChildren(node, context),
      ),
    );
  });

  registry.register(AppKeys.banner, (node, context, renderer) {
    return Container(
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
        color: Colors.orange.shade100,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            node.props[AppKeys.headline] as String? ?? kUnknown,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 4),
          Text(node.props[AppKeys.subtitle] as String? ?? kUnknown),
        ],
      ),
    );
  });

  registry.register(AppKeys.section, (node, context, renderer) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          node.props[AppKeys.title] as String? ?? kUnknown,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8),
        ...renderer.renderChildren(node, context),
      ],
    );
  });

  registry.register(AppKeys.productCard, (node, context, renderer) {
    return Card(
      child: ListTile(
        leading: const Icon(Icons.shopping_bag),
        title: Text(node.props[AppKeys.name] as String? ?? kUnknown),
        subtitle: Text('\$${node.props[AppKeys.price] ?? kUnknown}'),
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
