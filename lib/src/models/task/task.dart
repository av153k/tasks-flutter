import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import '../../config/network/base/base_network_model.dart';
part 'task.freezed.dart';
part 'task.g.dart';

@Freezed()
class Task extends BaseNetworkModel<Task> with _$Task {
  @HiveType(typeId: 1, adapterName: 'TaskAdapter')
  const factory Task({
    @Default(-1) @HiveField(0, defaultValue: -1) int id,
    @Default('') @HiveField(1, defaultValue: '') String title,
    @Default('') @HiveField(2, defaultValue: '') String description,
    @Default(false) @HiveField(3, defaultValue: false) bool completed,
  }) = _Task;

  factory Task.fromJson(Map<String, dynamic> json) => _$TaskFromJson(json);

  @override
  Task fromJson(Map<String, dynamic> json){
    return Task.fromJson(json);
  }
}
