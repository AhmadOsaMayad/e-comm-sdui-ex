import 'package:e_comm_s_d_u_i_ex/core/constants/app_keys.dart';
import 'package:e_comm_s_d_u_i_ex/core/helpers/form_action_handler.dart';
import 'package:e_comm_s_d_u_i_ex/core/helpers/widget_registry.dart';
import 'package:e_comm_s_d_u_i_ex/enums/form_action_type.dart';
import 'package:e_comm_s_d_u_i_ex/extensions/node_prop.dart';
import 'package:e_comm_s_d_u_i_ex/models/form_action.dart';
import 'package:flutter/material.dart';

SduiWidgetBuilder buildFormBuilder(
  FormActionHandler onAction,
) => (node, context, renderer) {
  final props = node.props;
  final title = props.getString(AppKeys.title);
  final submitLabel = props.getString(AppKeys.submitButtonLabel, AppKeys.apply);
  final resetLabel = props.getString(AppKeys.resetButtonLabel, AppKeys.cancel);

  return SafeArea(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (title.isNotEmpty)
          Padding(
            padding: const EdgeInsets.all(16),
            child: Text(title, style: Theme.of(context).textTheme.titleLarge),
          ),
        const Divider(),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: ListView(children: renderer.renderChildren(node, context)),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: ElevatedButton(
                onPressed: () => onAction(
                  const FormAction(
                    type: FormActionType.submit,
                    field: AppKeys.submit,
                  ),
                ),
                child: Text(submitLabel),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: TextButton(
                onPressed: () => onAction(
                  const FormAction(
                    type: FormActionType.reset,
                    field: AppKeys.reset,
                  ),
                ),
                child: Text(resetLabel),
              ),
            ),
          ],
        ),
      ],
    ),
  );
};
