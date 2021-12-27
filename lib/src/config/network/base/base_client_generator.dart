abstract class BaseClientGenerator {
  const BaseClientGenerator();
  String get path;
  String get method;
  String get baseUrl;
  dynamic get body;
  Map<String, dynamic>? get queryParameters;
  Map<String, dynamic> get headers;
  int? get sendTimeout => 30000;
  int? get receiveTimeout => 30000;
}
