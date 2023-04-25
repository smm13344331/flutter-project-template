
import 'package:project_template/core/apis/apis.dart';
import 'package:project_template/core/models/models.dart';

class LogAPI extends BaseAPI {
  LogAPI() : super('logs');

  Future<String?> saveAll(List<LogData> logs) async {
    var endpoint = '$baseUrl/save-all';
    var resp = await dio.post(endpoint, data: logs);
    return resp.data;
  }
}
