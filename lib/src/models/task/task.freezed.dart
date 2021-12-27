// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'task.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Task _$TaskFromJson(Map<String, dynamic> json) {
  return _Task.fromJson(json);
}

/// @nodoc
class _$TaskTearOff {
  const _$TaskTearOff();

  _Task call(
      {@HiveField(0, defaultValue: -1) int id = -1,
      @HiveField(1, defaultValue: '') String title = '',
      @HiveField(2, defaultValue: '') String description = '',
      @HiveField(3, defaultValue: false) bool completed = false}) {
    return _Task(
      id: id,
      title: title,
      description: description,
      completed: completed,
    );
  }

  Task fromJson(Map<String, Object?> json) {
    return Task.fromJson(json);
  }
}

/// @nodoc
const $Task = _$TaskTearOff();

/// @nodoc
mixin _$Task {
  @HiveField(0, defaultValue: -1)
  int get id => throw _privateConstructorUsedError;
  @HiveField(1, defaultValue: '')
  String get title => throw _privateConstructorUsedError;
  @HiveField(2, defaultValue: '')
  String get description => throw _privateConstructorUsedError;
  @HiveField(3, defaultValue: false)
  bool get completed => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TaskCopyWith<Task> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskCopyWith<$Res> {
  factory $TaskCopyWith(Task value, $Res Function(Task) then) =
      _$TaskCopyWithImpl<$Res>;
  $Res call(
      {@HiveField(0, defaultValue: -1) int id,
      @HiveField(1, defaultValue: '') String title,
      @HiveField(2, defaultValue: '') String description,
      @HiveField(3, defaultValue: false) bool completed});
}

/// @nodoc
class _$TaskCopyWithImpl<$Res> implements $TaskCopyWith<$Res> {
  _$TaskCopyWithImpl(this._value, this._then);

  final Task _value;
  // ignore: unused_field
  final $Res Function(Task) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? completed = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      completed: completed == freezed
          ? _value.completed
          : completed // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$TaskCopyWith<$Res> implements $TaskCopyWith<$Res> {
  factory _$TaskCopyWith(_Task value, $Res Function(_Task) then) =
      __$TaskCopyWithImpl<$Res>;
  @override
  $Res call(
      {@HiveField(0, defaultValue: -1) int id,
      @HiveField(1, defaultValue: '') String title,
      @HiveField(2, defaultValue: '') String description,
      @HiveField(3, defaultValue: false) bool completed});
}

/// @nodoc
class __$TaskCopyWithImpl<$Res> extends _$TaskCopyWithImpl<$Res>
    implements _$TaskCopyWith<$Res> {
  __$TaskCopyWithImpl(_Task _value, $Res Function(_Task) _then)
      : super(_value, (v) => _then(v as _Task));

  @override
  _Task get _value => super._value as _Task;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? completed = freezed,
  }) {
    return _then(_Task(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      completed: completed == freezed
          ? _value.completed
          : completed // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 1, adapterName: 'TaskAdapter')
class _$_Task implements _Task {
  const _$_Task(
      {@HiveField(0, defaultValue: -1) this.id = -1,
      @HiveField(1, defaultValue: '') this.title = '',
      @HiveField(2, defaultValue: '') this.description = '',
      @HiveField(3, defaultValue: false) this.completed = false});

  factory _$_Task.fromJson(Map<String, dynamic> json) => _$$_TaskFromJson(json);

  @JsonKey()
  @override
  @HiveField(0, defaultValue: -1)
  final int id;
  @JsonKey()
  @override
  @HiveField(1, defaultValue: '')
  final String title;
  @JsonKey()
  @override
  @HiveField(2, defaultValue: '')
  final String description;
  @JsonKey()
  @override
  @HiveField(3, defaultValue: false)
  final bool completed;

  @override
  String toString() {
    return 'Task(id: $id, title: $title, description: $description, completed: $completed)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Task &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.completed, completed));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(completed));

  @JsonKey(ignore: true)
  @override
  _$TaskCopyWith<_Task> get copyWith =>
      __$TaskCopyWithImpl<_Task>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TaskToJson(this);
  }

  @override
  Task fromJson(Map<String, dynamic> json) {
    return Task.fromJson(json);
  }
}

abstract class _Task implements Task {
  const factory _Task(
      {@HiveField(0, defaultValue: -1) int id,
      @HiveField(1, defaultValue: '') String title,
      @HiveField(2, defaultValue: '') String description,
      @HiveField(3, defaultValue: false) bool completed}) = _$_Task;

  factory _Task.fromJson(Map<String, dynamic> json) = _$_Task.fromJson;

  @override
  @HiveField(0, defaultValue: -1)
  int get id;
  @override
  @HiveField(1, defaultValue: '')
  String get title;
  @override
  @HiveField(2, defaultValue: '')
  String get description;
  @override
  @HiveField(3, defaultValue: false)
  bool get completed;
  @override
  @JsonKey(ignore: true)
  _$TaskCopyWith<_Task> get copyWith => throw _privateConstructorUsedError;
}
