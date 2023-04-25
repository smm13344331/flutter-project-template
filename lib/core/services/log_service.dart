
import 'package:project_template/core/apis/apis.dart';
import 'package:project_template/core/models/models.dart';
import 'package:project_template/core/services/services.dart';

class LogService extends ApiService<LogAPI> {
  LogService() : super(api: LogAPI());

  Future<String?> saveAll(List<LogData> logs) => api.saveAll(logs);
}
