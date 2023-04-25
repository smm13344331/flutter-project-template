import 'package:project_template/core/apis/apis.dart';

class ApiService<T extends BaseAPI> {
  final T api;

  /// I don't want to use reflections
  ApiService({required this.api});
}
