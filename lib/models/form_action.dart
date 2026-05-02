import 'package:e_comm_s_d_u_i_ex/enums/form_action_type.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

@immutable
class FormAction {
  final FormActionType type;
  final String field;
  final dynamic value;

  const FormAction({required this.type, required this.field, this.value});

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FormAction &&
          runtimeType == other.runtimeType &&
          type == other.type &&
          field == other.field &&
          value == other.value;

  @override
  int get hashCode => Object.hash(type, field, value);

  @override
  String toString() => 'FormAction(type: $type, field: $field, value: $value)';
}
