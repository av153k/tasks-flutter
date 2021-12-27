import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tasks/src/models/task/task.dart';
import 'package:tasks/src/services/database_service.dart';

class TasksProvider extends ChangeNotifier {
  final List<Task> _tasks = [];

  List<Task> get tasks => _tasks;

  getTasks() async {
    final tasks = await DatabaseServices.service.getAllTasks();
    _tasks.clear();
    _tasks.addAll(tasks!);
    notifyListeners();
  }

  void addTask(Task task) {
    _tasks.add(task);
    DatabaseServices.service.addTask(task);
    notifyListeners();
  }

  void removeTask(Task task) {
    _tasks.remove(task);
    DatabaseServices.service.deleteTask(task);
    notifyListeners();
  }

  void toggleTask(Task task) {
    int index = _tasks.indexOf(task);
    _tasks.removeAt(index);
    _tasks.insert(index, task.copyWith(completed: !task.completed));
    DatabaseServices.service.updateTask(task);
    notifyListeners();
  }
}

var tasksProvider = ChangeNotifierProvider((ref) => TasksProvider());
