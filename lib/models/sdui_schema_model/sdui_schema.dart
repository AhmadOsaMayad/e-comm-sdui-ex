import 'package:e_comm_s_d_u_i_ex/core/constants/app_keys.dart';
import 'package:e_comm_s_d_u_i_ex/core/constants/constants.dart';

class SduiSchema {
  String type;
  int version;
  Map<String, dynamic> props;
  List<SduiSchema> children;

  SduiSchema({
    required this.type,
    required this.version,
    required this.props,
    required this.children,
  });

  factory SduiSchema.fromJson(Map<String, dynamic> json) => SduiSchema(
    type: json[AppKeys.type] as String? ?? kUnknown,
    version: json[AppKeys.version] as int? ?? 1,
    props: (json[AppKeys.props] as Map<String, dynamic>?) ?? const {},
    children: (json[AppKeys.children] as List<dynamic>? ?? [])
        .map((e) => SduiSchema.fromJson(e as Map<String, dynamic>))
        .toList(),
  );

  Map<String, dynamic> toJson() => {
    AppKeys.type: type,
    AppKeys.version: version,
    AppKeys.props: props,
    AppKeys.children: children.map((e) => e.toJson()).toList(),
  };
}
