import 'package:tasks/src/config/network/layers/network_executor.dart';
import 'package:tasks/src/config/network/models/client/api_client.dart';
import 'package:tasks/src/config/network/models/network_error/network_error.dart';
import 'package:tasks/src/config/network/models/result/result.dart';
import 'package:tasks/src/models/task/task.dart';

class ApiService {
  static NetworkExecutor executor = NetworkExecutor();

  static Future<Result<List<Task>, NetworkError>> getAllTasks() async {
    return executor.execute<Task, List<Task>>(
      route: const ApiClient.tasks(),
      responseType: const Task(),
    );
  }
}
