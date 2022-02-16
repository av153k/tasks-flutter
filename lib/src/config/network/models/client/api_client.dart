import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tasks/src/models/task/task.dart';
import 'package:tasks/src/models/user/user.dart';
import '../../base/base_client_generator.dart';

part 'api_client.freezed.dart';

@freezed
class ApiClient extends BaseClientGenerator with _$ApiClient {
  const ApiClient._() : super();

  const factory ApiClient.createTask({required Task task}) = _CreateTask;

  const factory ApiClient.login() = _Login;

  const factory ApiClient.register({required User user}) = _Register;

  const factory ApiClient.tasks() = _Tasks;

  const factory ApiClient.toggleCompleteStatus({required String id}) =
      _ToggleCompleteStatus;

  const factory ApiClient.updateTask({required String id, required Task task}) =
      _UpdateTask;

  const factory ApiClient.user() = _User;

  @override
  String get baseUrl => 'http://127.0.0.1:8000/api/v1/';

  @override
  Map<String, dynamic>? get body {
    return maybeWhen(
      orElse: () => null,
      tasks: () => null,
      user: () => null,
      login: () => null,
      register: (User user) => {'user': user.toJson()},
      createTask: (Task task) => {'task': task.toJson()},
      toggleCompleteStatus: (String id) => null,
      updateTask: (String id, Task task) => {'task': task.toJson()},
    );
  }

  @override
  Map<String, dynamic> get headers => {'Content-Type': 'application/json'};

  @override
  String get method {
    return maybeWhen<String>(
      tasks: () => 'GET',
      user: () => 'GET',
      login: () => 'POST',
      register: (User user) => 'POST',
      createTask: (Task task) => 'POST',
      toggleCompleteStatus: (String id) => 'POST',
      updateTask: (String id, Task task) => 'POST',
      orElse: () => 'GET',
    );
  }

  @override
  String get path {
    return when<String>(
      tasks: () => 'tasks/getAllTasks',
      user: () => 'user',
      login: () => 'user/login',
      register: (User user) => 'user/register',
      createTask: (Task tas) => 'tasks/createTask',
      toggleCompleteStatus: (String id) => 'tasks/toggleCompleteStatus/$id',
      updateTask: (String id, Task task) => 'tasks/updateTask/$id',
    );
  }

  @override
  Map<String, dynamic>? get queryParameters {
    return maybeWhen(
      orElse: () {
        return null;
      },
    );
  }
}
