import 'package:flutter/foundation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:tasks/src/models/task/task.dart';

class DatabaseServices {
  DatabaseServices._();

  static final DatabaseServices _instance = DatabaseServices._();
  static Box<Task>? _taskBox;

  static DatabaseServices get service => _instance;

  Box<Task>? get taskBox => _taskBox;

  ValueListenable<Box<Task>>? getBoxListenable() {
    return _taskBox?.listenable();
  }

  initialize() async {
    await Hive.initFlutter();
    Hive.registerAdapter(TaskAdapter());
    _taskBox = await Hive.openBox<Task>('tasks');
  }

  Future<int?> addTask(Task task)async {
    return await _taskBox?.add(task);
  }

  Future<void> updateTask(Task task) async {
    await _taskBox?.put(task.id, task);
  }

  Future<void> deleteTask(Task task) async {
    await _taskBox?.delete(task.id);
  }

  Future<List<Task>?> getAllTasks() async{
    return _taskBox?.values.toList();
  }
}
