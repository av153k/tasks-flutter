// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'api_client.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ApiClientTearOff {
  const _$ApiClientTearOff();

  _CreateTask createTask({required Task task}) {
    return _CreateTask(
      task: task,
    );
  }

  _ToggleCompleteStatus toggleCompleteStatus({required String id}) {
    return _ToggleCompleteStatus(
      id: id,
    );
  }

  _UpdateTask updateTask({required String id, required Task task}) {
    return _UpdateTask(
      id: id,
      task: task,
    );
  }

  _Tasks tasks() {
    return const _Tasks();
  }

  _User user() {
    return const _User();
  }

  _Login login() {
    return const _Login();
  }

  _Register register({required User user}) {
    return _Register(
      user: user,
    );
  }
}

/// @nodoc
const $ApiClient = _$ApiClientTearOff();

/// @nodoc
mixin _$ApiClient {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Task task) createTask,
    required TResult Function(String id) toggleCompleteStatus,
    required TResult Function(String id, Task task) updateTask,
    required TResult Function() tasks,
    required TResult Function() user,
    required TResult Function() login,
    required TResult Function(User user) register,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Task task)? createTask,
    TResult Function(String id)? toggleCompleteStatus,
    TResult Function(String id, Task task)? updateTask,
    TResult Function()? tasks,
    TResult Function()? user,
    TResult Function()? login,
    TResult Function(User user)? register,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Task task)? createTask,
    TResult Function(String id)? toggleCompleteStatus,
    TResult Function(String id, Task task)? updateTask,
    TResult Function()? tasks,
    TResult Function()? user,
    TResult Function()? login,
    TResult Function(User user)? register,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateTask value) createTask,
    required TResult Function(_ToggleCompleteStatus value) toggleCompleteStatus,
    required TResult Function(_UpdateTask value) updateTask,
    required TResult Function(_Tasks value) tasks,
    required TResult Function(_User value) user,
    required TResult Function(_Login value) login,
    required TResult Function(_Register value) register,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CreateTask value)? createTask,
    TResult Function(_ToggleCompleteStatus value)? toggleCompleteStatus,
    TResult Function(_UpdateTask value)? updateTask,
    TResult Function(_Tasks value)? tasks,
    TResult Function(_User value)? user,
    TResult Function(_Login value)? login,
    TResult Function(_Register value)? register,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateTask value)? createTask,
    TResult Function(_ToggleCompleteStatus value)? toggleCompleteStatus,
    TResult Function(_UpdateTask value)? updateTask,
    TResult Function(_Tasks value)? tasks,
    TResult Function(_User value)? user,
    TResult Function(_Login value)? login,
    TResult Function(_Register value)? register,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiClientCopyWith<$Res> {
  factory $ApiClientCopyWith(ApiClient value, $Res Function(ApiClient) then) =
      _$ApiClientCopyWithImpl<$Res>;
}

/// @nodoc
class _$ApiClientCopyWithImpl<$Res> implements $ApiClientCopyWith<$Res> {
  _$ApiClientCopyWithImpl(this._value, this._then);

  final ApiClient _value;
  // ignore: unused_field
  final $Res Function(ApiClient) _then;
}

/// @nodoc
abstract class _$CreateTaskCopyWith<$Res> {
  factory _$CreateTaskCopyWith(
          _CreateTask value, $Res Function(_CreateTask) then) =
      __$CreateTaskCopyWithImpl<$Res>;
  $Res call({Task task});

  $TaskCopyWith<$Res> get task;
}

/// @nodoc
class __$CreateTaskCopyWithImpl<$Res> extends _$ApiClientCopyWithImpl<$Res>
    implements _$CreateTaskCopyWith<$Res> {
  __$CreateTaskCopyWithImpl(
      _CreateTask _value, $Res Function(_CreateTask) _then)
      : super(_value, (v) => _then(v as _CreateTask));

  @override
  _CreateTask get _value => super._value as _CreateTask;

  @override
  $Res call({
    Object? task = freezed,
  }) {
    return _then(_CreateTask(
      task: task == freezed
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as Task,
    ));
  }

  @override
  $TaskCopyWith<$Res> get task {
    return $TaskCopyWith<$Res>(_value.task, (value) {
      return _then(_value.copyWith(task: value));
    });
  }
}

/// @nodoc

class _$_CreateTask extends _CreateTask {
  const _$_CreateTask({required this.task}) : super._();

  @override
  final Task task;

  @override
  String toString() {
    return 'ApiClient.createTask(task: $task)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CreateTask &&
            const DeepCollectionEquality().equals(other.task, task));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(task));

  @JsonKey(ignore: true)
  @override
  _$CreateTaskCopyWith<_CreateTask> get copyWith =>
      __$CreateTaskCopyWithImpl<_CreateTask>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Task task) createTask,
    required TResult Function(String id) toggleCompleteStatus,
    required TResult Function(String id, Task task) updateTask,
    required TResult Function() tasks,
    required TResult Function() user,
    required TResult Function() login,
    required TResult Function(User user) register,
  }) {
    return createTask(task);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Task task)? createTask,
    TResult Function(String id)? toggleCompleteStatus,
    TResult Function(String id, Task task)? updateTask,
    TResult Function()? tasks,
    TResult Function()? user,
    TResult Function()? login,
    TResult Function(User user)? register,
  }) {
    return createTask?.call(task);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Task task)? createTask,
    TResult Function(String id)? toggleCompleteStatus,
    TResult Function(String id, Task task)? updateTask,
    TResult Function()? tasks,
    TResult Function()? user,
    TResult Function()? login,
    TResult Function(User user)? register,
    required TResult orElse(),
  }) {
    if (createTask != null) {
      return createTask(task);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateTask value) createTask,
    required TResult Function(_ToggleCompleteStatus value) toggleCompleteStatus,
    required TResult Function(_UpdateTask value) updateTask,
    required TResult Function(_Tasks value) tasks,
    required TResult Function(_User value) user,
    required TResult Function(_Login value) login,
    required TResult Function(_Register value) register,
  }) {
    return createTask(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CreateTask value)? createTask,
    TResult Function(_ToggleCompleteStatus value)? toggleCompleteStatus,
    TResult Function(_UpdateTask value)? updateTask,
    TResult Function(_Tasks value)? tasks,
    TResult Function(_User value)? user,
    TResult Function(_Login value)? login,
    TResult Function(_Register value)? register,
  }) {
    return createTask?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateTask value)? createTask,
    TResult Function(_ToggleCompleteStatus value)? toggleCompleteStatus,
    TResult Function(_UpdateTask value)? updateTask,
    TResult Function(_Tasks value)? tasks,
    TResult Function(_User value)? user,
    TResult Function(_Login value)? login,
    TResult Function(_Register value)? register,
    required TResult orElse(),
  }) {
    if (createTask != null) {
      return createTask(this);
    }
    return orElse();
  }
}

abstract class _CreateTask extends ApiClient {
  const factory _CreateTask({required Task task}) = _$_CreateTask;
  const _CreateTask._() : super._();

  Task get task;
  @JsonKey(ignore: true)
  _$CreateTaskCopyWith<_CreateTask> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ToggleCompleteStatusCopyWith<$Res> {
  factory _$ToggleCompleteStatusCopyWith(_ToggleCompleteStatus value,
          $Res Function(_ToggleCompleteStatus) then) =
      __$ToggleCompleteStatusCopyWithImpl<$Res>;
  $Res call({String id});
}

/// @nodoc
class __$ToggleCompleteStatusCopyWithImpl<$Res>
    extends _$ApiClientCopyWithImpl<$Res>
    implements _$ToggleCompleteStatusCopyWith<$Res> {
  __$ToggleCompleteStatusCopyWithImpl(
      _ToggleCompleteStatus _value, $Res Function(_ToggleCompleteStatus) _then)
      : super(_value, (v) => _then(v as _ToggleCompleteStatus));

  @override
  _ToggleCompleteStatus get _value => super._value as _ToggleCompleteStatus;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_ToggleCompleteStatus(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ToggleCompleteStatus extends _ToggleCompleteStatus {
  const _$_ToggleCompleteStatus({required this.id}) : super._();

  @override
  final String id;

  @override
  String toString() {
    return 'ApiClient.toggleCompleteStatus(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ToggleCompleteStatus &&
            const DeepCollectionEquality().equals(other.id, id));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(id));

  @JsonKey(ignore: true)
  @override
  _$ToggleCompleteStatusCopyWith<_ToggleCompleteStatus> get copyWith =>
      __$ToggleCompleteStatusCopyWithImpl<_ToggleCompleteStatus>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Task task) createTask,
    required TResult Function(String id) toggleCompleteStatus,
    required TResult Function(String id, Task task) updateTask,
    required TResult Function() tasks,
    required TResult Function() user,
    required TResult Function() login,
    required TResult Function(User user) register,
  }) {
    return toggleCompleteStatus(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Task task)? createTask,
    TResult Function(String id)? toggleCompleteStatus,
    TResult Function(String id, Task task)? updateTask,
    TResult Function()? tasks,
    TResult Function()? user,
    TResult Function()? login,
    TResult Function(User user)? register,
  }) {
    return toggleCompleteStatus?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Task task)? createTask,
    TResult Function(String id)? toggleCompleteStatus,
    TResult Function(String id, Task task)? updateTask,
    TResult Function()? tasks,
    TResult Function()? user,
    TResult Function()? login,
    TResult Function(User user)? register,
    required TResult orElse(),
  }) {
    if (toggleCompleteStatus != null) {
      return toggleCompleteStatus(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateTask value) createTask,
    required TResult Function(_ToggleCompleteStatus value) toggleCompleteStatus,
    required TResult Function(_UpdateTask value) updateTask,
    required TResult Function(_Tasks value) tasks,
    required TResult Function(_User value) user,
    required TResult Function(_Login value) login,
    required TResult Function(_Register value) register,
  }) {
    return toggleCompleteStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CreateTask value)? createTask,
    TResult Function(_ToggleCompleteStatus value)? toggleCompleteStatus,
    TResult Function(_UpdateTask value)? updateTask,
    TResult Function(_Tasks value)? tasks,
    TResult Function(_User value)? user,
    TResult Function(_Login value)? login,
    TResult Function(_Register value)? register,
  }) {
    return toggleCompleteStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateTask value)? createTask,
    TResult Function(_ToggleCompleteStatus value)? toggleCompleteStatus,
    TResult Function(_UpdateTask value)? updateTask,
    TResult Function(_Tasks value)? tasks,
    TResult Function(_User value)? user,
    TResult Function(_Login value)? login,
    TResult Function(_Register value)? register,
    required TResult orElse(),
  }) {
    if (toggleCompleteStatus != null) {
      return toggleCompleteStatus(this);
    }
    return orElse();
  }
}

abstract class _ToggleCompleteStatus extends ApiClient {
  const factory _ToggleCompleteStatus({required String id}) =
      _$_ToggleCompleteStatus;
  const _ToggleCompleteStatus._() : super._();

  String get id;
  @JsonKey(ignore: true)
  _$ToggleCompleteStatusCopyWith<_ToggleCompleteStatus> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UpdateTaskCopyWith<$Res> {
  factory _$UpdateTaskCopyWith(
          _UpdateTask value, $Res Function(_UpdateTask) then) =
      __$UpdateTaskCopyWithImpl<$Res>;
  $Res call({String id, Task task});

  $TaskCopyWith<$Res> get task;
}

/// @nodoc
class __$UpdateTaskCopyWithImpl<$Res> extends _$ApiClientCopyWithImpl<$Res>
    implements _$UpdateTaskCopyWith<$Res> {
  __$UpdateTaskCopyWithImpl(
      _UpdateTask _value, $Res Function(_UpdateTask) _then)
      : super(_value, (v) => _then(v as _UpdateTask));

  @override
  _UpdateTask get _value => super._value as _UpdateTask;

  @override
  $Res call({
    Object? id = freezed,
    Object? task = freezed,
  }) {
    return _then(_UpdateTask(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      task: task == freezed
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as Task,
    ));
  }

  @override
  $TaskCopyWith<$Res> get task {
    return $TaskCopyWith<$Res>(_value.task, (value) {
      return _then(_value.copyWith(task: value));
    });
  }
}

/// @nodoc

class _$_UpdateTask extends _UpdateTask {
  const _$_UpdateTask({required this.id, required this.task}) : super._();

  @override
  final String id;
  @override
  final Task task;

  @override
  String toString() {
    return 'ApiClient.updateTask(id: $id, task: $task)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UpdateTask &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.task, task));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(task));

  @JsonKey(ignore: true)
  @override
  _$UpdateTaskCopyWith<_UpdateTask> get copyWith =>
      __$UpdateTaskCopyWithImpl<_UpdateTask>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Task task) createTask,
    required TResult Function(String id) toggleCompleteStatus,
    required TResult Function(String id, Task task) updateTask,
    required TResult Function() tasks,
    required TResult Function() user,
    required TResult Function() login,
    required TResult Function(User user) register,
  }) {
    return updateTask(id, task);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Task task)? createTask,
    TResult Function(String id)? toggleCompleteStatus,
    TResult Function(String id, Task task)? updateTask,
    TResult Function()? tasks,
    TResult Function()? user,
    TResult Function()? login,
    TResult Function(User user)? register,
  }) {
    return updateTask?.call(id, task);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Task task)? createTask,
    TResult Function(String id)? toggleCompleteStatus,
    TResult Function(String id, Task task)? updateTask,
    TResult Function()? tasks,
    TResult Function()? user,
    TResult Function()? login,
    TResult Function(User user)? register,
    required TResult orElse(),
  }) {
    if (updateTask != null) {
      return updateTask(id, task);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateTask value) createTask,
    required TResult Function(_ToggleCompleteStatus value) toggleCompleteStatus,
    required TResult Function(_UpdateTask value) updateTask,
    required TResult Function(_Tasks value) tasks,
    required TResult Function(_User value) user,
    required TResult Function(_Login value) login,
    required TResult Function(_Register value) register,
  }) {
    return updateTask(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CreateTask value)? createTask,
    TResult Function(_ToggleCompleteStatus value)? toggleCompleteStatus,
    TResult Function(_UpdateTask value)? updateTask,
    TResult Function(_Tasks value)? tasks,
    TResult Function(_User value)? user,
    TResult Function(_Login value)? login,
    TResult Function(_Register value)? register,
  }) {
    return updateTask?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateTask value)? createTask,
    TResult Function(_ToggleCompleteStatus value)? toggleCompleteStatus,
    TResult Function(_UpdateTask value)? updateTask,
    TResult Function(_Tasks value)? tasks,
    TResult Function(_User value)? user,
    TResult Function(_Login value)? login,
    TResult Function(_Register value)? register,
    required TResult orElse(),
  }) {
    if (updateTask != null) {
      return updateTask(this);
    }
    return orElse();
  }
}

abstract class _UpdateTask extends ApiClient {
  const factory _UpdateTask({required String id, required Task task}) =
      _$_UpdateTask;
  const _UpdateTask._() : super._();

  String get id;
  Task get task;
  @JsonKey(ignore: true)
  _$UpdateTaskCopyWith<_UpdateTask> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$TasksCopyWith<$Res> {
  factory _$TasksCopyWith(_Tasks value, $Res Function(_Tasks) then) =
      __$TasksCopyWithImpl<$Res>;
}

/// @nodoc
class __$TasksCopyWithImpl<$Res> extends _$ApiClientCopyWithImpl<$Res>
    implements _$TasksCopyWith<$Res> {
  __$TasksCopyWithImpl(_Tasks _value, $Res Function(_Tasks) _then)
      : super(_value, (v) => _then(v as _Tasks));

  @override
  _Tasks get _value => super._value as _Tasks;
}

/// @nodoc

class _$_Tasks extends _Tasks {
  const _$_Tasks() : super._();

  @override
  String toString() {
    return 'ApiClient.tasks()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Tasks);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Task task) createTask,
    required TResult Function(String id) toggleCompleteStatus,
    required TResult Function(String id, Task task) updateTask,
    required TResult Function() tasks,
    required TResult Function() user,
    required TResult Function() login,
    required TResult Function(User user) register,
  }) {
    return tasks();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Task task)? createTask,
    TResult Function(String id)? toggleCompleteStatus,
    TResult Function(String id, Task task)? updateTask,
    TResult Function()? tasks,
    TResult Function()? user,
    TResult Function()? login,
    TResult Function(User user)? register,
  }) {
    return tasks?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Task task)? createTask,
    TResult Function(String id)? toggleCompleteStatus,
    TResult Function(String id, Task task)? updateTask,
    TResult Function()? tasks,
    TResult Function()? user,
    TResult Function()? login,
    TResult Function(User user)? register,
    required TResult orElse(),
  }) {
    if (tasks != null) {
      return tasks();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateTask value) createTask,
    required TResult Function(_ToggleCompleteStatus value) toggleCompleteStatus,
    required TResult Function(_UpdateTask value) updateTask,
    required TResult Function(_Tasks value) tasks,
    required TResult Function(_User value) user,
    required TResult Function(_Login value) login,
    required TResult Function(_Register value) register,
  }) {
    return tasks(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CreateTask value)? createTask,
    TResult Function(_ToggleCompleteStatus value)? toggleCompleteStatus,
    TResult Function(_UpdateTask value)? updateTask,
    TResult Function(_Tasks value)? tasks,
    TResult Function(_User value)? user,
    TResult Function(_Login value)? login,
    TResult Function(_Register value)? register,
  }) {
    return tasks?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateTask value)? createTask,
    TResult Function(_ToggleCompleteStatus value)? toggleCompleteStatus,
    TResult Function(_UpdateTask value)? updateTask,
    TResult Function(_Tasks value)? tasks,
    TResult Function(_User value)? user,
    TResult Function(_Login value)? login,
    TResult Function(_Register value)? register,
    required TResult orElse(),
  }) {
    if (tasks != null) {
      return tasks(this);
    }
    return orElse();
  }
}

abstract class _Tasks extends ApiClient {
  const factory _Tasks() = _$_Tasks;
  const _Tasks._() : super._();
}

/// @nodoc
abstract class _$UserCopyWith<$Res> {
  factory _$UserCopyWith(_User value, $Res Function(_User) then) =
      __$UserCopyWithImpl<$Res>;
}

/// @nodoc
class __$UserCopyWithImpl<$Res> extends _$ApiClientCopyWithImpl<$Res>
    implements _$UserCopyWith<$Res> {
  __$UserCopyWithImpl(_User _value, $Res Function(_User) _then)
      : super(_value, (v) => _then(v as _User));

  @override
  _User get _value => super._value as _User;
}

/// @nodoc

class _$_User extends _User {
  const _$_User() : super._();

  @override
  String toString() {
    return 'ApiClient.user()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _User);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Task task) createTask,
    required TResult Function(String id) toggleCompleteStatus,
    required TResult Function(String id, Task task) updateTask,
    required TResult Function() tasks,
    required TResult Function() user,
    required TResult Function() login,
    required TResult Function(User user) register,
  }) {
    return user();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Task task)? createTask,
    TResult Function(String id)? toggleCompleteStatus,
    TResult Function(String id, Task task)? updateTask,
    TResult Function()? tasks,
    TResult Function()? user,
    TResult Function()? login,
    TResult Function(User user)? register,
  }) {
    return user?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Task task)? createTask,
    TResult Function(String id)? toggleCompleteStatus,
    TResult Function(String id, Task task)? updateTask,
    TResult Function()? tasks,
    TResult Function()? user,
    TResult Function()? login,
    TResult Function(User user)? register,
    required TResult orElse(),
  }) {
    if (user != null) {
      return user();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateTask value) createTask,
    required TResult Function(_ToggleCompleteStatus value) toggleCompleteStatus,
    required TResult Function(_UpdateTask value) updateTask,
    required TResult Function(_Tasks value) tasks,
    required TResult Function(_User value) user,
    required TResult Function(_Login value) login,
    required TResult Function(_Register value) register,
  }) {
    return user(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CreateTask value)? createTask,
    TResult Function(_ToggleCompleteStatus value)? toggleCompleteStatus,
    TResult Function(_UpdateTask value)? updateTask,
    TResult Function(_Tasks value)? tasks,
    TResult Function(_User value)? user,
    TResult Function(_Login value)? login,
    TResult Function(_Register value)? register,
  }) {
    return user?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateTask value)? createTask,
    TResult Function(_ToggleCompleteStatus value)? toggleCompleteStatus,
    TResult Function(_UpdateTask value)? updateTask,
    TResult Function(_Tasks value)? tasks,
    TResult Function(_User value)? user,
    TResult Function(_Login value)? login,
    TResult Function(_Register value)? register,
    required TResult orElse(),
  }) {
    if (user != null) {
      return user(this);
    }
    return orElse();
  }
}

abstract class _User extends ApiClient {
  const factory _User() = _$_User;
  const _User._() : super._();
}

/// @nodoc
abstract class _$LoginCopyWith<$Res> {
  factory _$LoginCopyWith(_Login value, $Res Function(_Login) then) =
      __$LoginCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoginCopyWithImpl<$Res> extends _$ApiClientCopyWithImpl<$Res>
    implements _$LoginCopyWith<$Res> {
  __$LoginCopyWithImpl(_Login _value, $Res Function(_Login) _then)
      : super(_value, (v) => _then(v as _Login));

  @override
  _Login get _value => super._value as _Login;
}

/// @nodoc

class _$_Login extends _Login {
  const _$_Login() : super._();

  @override
  String toString() {
    return 'ApiClient.login()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Login);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Task task) createTask,
    required TResult Function(String id) toggleCompleteStatus,
    required TResult Function(String id, Task task) updateTask,
    required TResult Function() tasks,
    required TResult Function() user,
    required TResult Function() login,
    required TResult Function(User user) register,
  }) {
    return login();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Task task)? createTask,
    TResult Function(String id)? toggleCompleteStatus,
    TResult Function(String id, Task task)? updateTask,
    TResult Function()? tasks,
    TResult Function()? user,
    TResult Function()? login,
    TResult Function(User user)? register,
  }) {
    return login?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Task task)? createTask,
    TResult Function(String id)? toggleCompleteStatus,
    TResult Function(String id, Task task)? updateTask,
    TResult Function()? tasks,
    TResult Function()? user,
    TResult Function()? login,
    TResult Function(User user)? register,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateTask value) createTask,
    required TResult Function(_ToggleCompleteStatus value) toggleCompleteStatus,
    required TResult Function(_UpdateTask value) updateTask,
    required TResult Function(_Tasks value) tasks,
    required TResult Function(_User value) user,
    required TResult Function(_Login value) login,
    required TResult Function(_Register value) register,
  }) {
    return login(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CreateTask value)? createTask,
    TResult Function(_ToggleCompleteStatus value)? toggleCompleteStatus,
    TResult Function(_UpdateTask value)? updateTask,
    TResult Function(_Tasks value)? tasks,
    TResult Function(_User value)? user,
    TResult Function(_Login value)? login,
    TResult Function(_Register value)? register,
  }) {
    return login?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateTask value)? createTask,
    TResult Function(_ToggleCompleteStatus value)? toggleCompleteStatus,
    TResult Function(_UpdateTask value)? updateTask,
    TResult Function(_Tasks value)? tasks,
    TResult Function(_User value)? user,
    TResult Function(_Login value)? login,
    TResult Function(_Register value)? register,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(this);
    }
    return orElse();
  }
}

abstract class _Login extends ApiClient {
  const factory _Login() = _$_Login;
  const _Login._() : super._();
}

/// @nodoc
abstract class _$RegisterCopyWith<$Res> {
  factory _$RegisterCopyWith(_Register value, $Res Function(_Register) then) =
      __$RegisterCopyWithImpl<$Res>;
  $Res call({User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$RegisterCopyWithImpl<$Res> extends _$ApiClientCopyWithImpl<$Res>
    implements _$RegisterCopyWith<$Res> {
  __$RegisterCopyWithImpl(_Register _value, $Res Function(_Register) _then)
      : super(_value, (v) => _then(v as _Register));

  @override
  _Register get _value => super._value as _Register;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_Register(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }

  @override
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$_Register extends _Register {
  const _$_Register({required this.user}) : super._();

  @override
  final User user;

  @override
  String toString() {
    return 'ApiClient.register(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Register &&
            const DeepCollectionEquality().equals(other.user, user));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(user));

  @JsonKey(ignore: true)
  @override
  _$RegisterCopyWith<_Register> get copyWith =>
      __$RegisterCopyWithImpl<_Register>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Task task) createTask,
    required TResult Function(String id) toggleCompleteStatus,
    required TResult Function(String id, Task task) updateTask,
    required TResult Function() tasks,
    required TResult Function() user,
    required TResult Function() login,
    required TResult Function(User user) register,
  }) {
    return register(this.user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Task task)? createTask,
    TResult Function(String id)? toggleCompleteStatus,
    TResult Function(String id, Task task)? updateTask,
    TResult Function()? tasks,
    TResult Function()? user,
    TResult Function()? login,
    TResult Function(User user)? register,
  }) {
    return register?.call(this.user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Task task)? createTask,
    TResult Function(String id)? toggleCompleteStatus,
    TResult Function(String id, Task task)? updateTask,
    TResult Function()? tasks,
    TResult Function()? user,
    TResult Function()? login,
    TResult Function(User user)? register,
    required TResult orElse(),
  }) {
    if (register != null) {
      return register(this.user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateTask value) createTask,
    required TResult Function(_ToggleCompleteStatus value) toggleCompleteStatus,
    required TResult Function(_UpdateTask value) updateTask,
    required TResult Function(_Tasks value) tasks,
    required TResult Function(_User value) user,
    required TResult Function(_Login value) login,
    required TResult Function(_Register value) register,
  }) {
    return register(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CreateTask value)? createTask,
    TResult Function(_ToggleCompleteStatus value)? toggleCompleteStatus,
    TResult Function(_UpdateTask value)? updateTask,
    TResult Function(_Tasks value)? tasks,
    TResult Function(_User value)? user,
    TResult Function(_Login value)? login,
    TResult Function(_Register value)? register,
  }) {
    return register?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateTask value)? createTask,
    TResult Function(_ToggleCompleteStatus value)? toggleCompleteStatus,
    TResult Function(_UpdateTask value)? updateTask,
    TResult Function(_Tasks value)? tasks,
    TResult Function(_User value)? user,
    TResult Function(_Login value)? login,
    TResult Function(_Register value)? register,
    required TResult orElse(),
  }) {
    if (register != null) {
      return register(this);
    }
    return orElse();
  }
}

abstract class _Register extends ApiClient {
  const factory _Register({required User user}) = _$_Register;
  const _Register._() : super._();

  User get user;
  @JsonKey(ignore: true)
  _$RegisterCopyWith<_Register> get copyWith =>
      throw _privateConstructorUsedError;
}
