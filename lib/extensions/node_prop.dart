extension NodeProp on MapX {
  T? getProp<T>(String key) => this[key] as T? ?? T.hardCodedDefault as T;
}

extension DefaultValue<T> on T {
  T get hardCodedDefault {
    if (T == String) return '' as T;
    if (T == int) return 0 as T;
    if (T == double) return 0.0 as T;
    if (T == bool) return false as T;
    if (T == List<dynamic>) return <dynamic>[] as T;
    if (T == Map<String, dynamic>) return <String, dynamic>{} as T;
    throw UnsupportedError('No hard-coded default for type $T');
  }
}

typedef MapX = Map<String, dynamic>;

// MapX x = <String, dynamic>{};
// Map<String, dynamic> y = x;

extension SduiProp on MapX {
  String getString(String key, [String fallback = ""]) =>
      this[key] as String? ?? fallback;

  int getInt(String key, [int fallback = 0]) => this[key] as int? ?? fallback;

  double getDouble(String key, [double fallback = 0.0]) =>
      this[key] as double? ?? fallback;

  bool getBool(String key, [bool fallback = false]) =>
      this[key] as bool? ?? fallback;

  List<dynamic> getList(String key, [List<dynamic> fallback = const []]) =>
      this[key] as List<dynamic>? ?? fallback;

  Map<String, dynamic> getMap(
    String key, [
    Map<String, dynamic> fallback = const {},
  ]) => this[key] as Map<String, dynamic>? ?? fallback;
}
