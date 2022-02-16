import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tasks/src/app/home/view.dart';
import 'package:tasks/src/models/task/task.dart';
import 'package:tasks/src/services/database_service.dart';

final tasksViewModelProvider = ChangeNotifierProvider.autoDispose(
  (ref) => TasksViewModel(),
);

class TasksViewModel extends ChangeNotifier {
  List<Task>? allTasks = [];

  getAllTasksFromDb() async {
    allTasks = await DatabaseServices.service.getAllTasks();
    notifyListeners();
  }

  addANewTask(BuildContext context) async {
    await DatabaseServices.service.addTask(
      await _showAddTaskBottomSheet(
        context,
      ),
    );
    getAllTasksFromDb();
  }

  Future<Task> _showAddTaskBottomSheet(BuildContext context) async {
    Task _res = await showModalBottomSheet(
      context: context,
      builder: (context) => const AddTaskBottomSheet(),
    );
    return _res;
  }

  markTaskComplete(Task task, bool value) async {
    await DatabaseServices.service.updateTask(task.copyWith(completed: value));
    getAllTasksFromDb();
  }
}
