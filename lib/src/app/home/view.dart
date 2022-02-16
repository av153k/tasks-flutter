import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hive/hive.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tasks/src/app/home/view_model.dart';
import 'package:tasks/src/constants/app_constants.dart';
import 'package:tasks/src/helpers/log_helper.dart';
import 'package:tasks/src/app/drawer/view.dart';
import 'package:tasks/src/helpers/size_config.dart';
import 'package:tasks/src/models/task/task.dart';
import 'package:tasks/src/services/database_service.dart';
import 'package:tasks/src/widgets/task_card.dart';

class HomePage extends HookWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _controller = useAnimationController(
      duration: const Duration(milliseconds: 500),
    );

    return Material(
      child: AnimatedBuilder(
        animation: _controller,
        builder: (context, child) {
          double _slide =
              _controller.value * (MediaQuery.of(context).size.width * 0.6);
          double _scale = 1 - (_controller.value * 0.2);
          double _borderRadius = _controller.value * 25;
          return Stack(
            children: [
              const DrawerPage(),
              Transform(
                transform: Matrix4.identity()
                  ..translate(_slide)
                  ..scale(_scale),
                alignment: Alignment.center,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(_borderRadius),
                  child: GestureDetector(
                    onTap: () {
                      if (!_controller.isDismissed) {
                        _controller.reverse();
                      }
                    },
                    child: Scaffold(
                      floatingActionButton: const _AddTaskButton(),
                      appBar: AppBar(
                        leading: IconButton(
                          icon: const Icon(EvaIcons.menu2Outline),
                          onPressed: () => _controller.isDismissed
                              ? _controller.forward()
                              : _controller.reverse(),
                        ),
                        actions: [
                          IconButton(
                            icon: const Icon(EvaIcons.searchOutline),
                            onPressed: () {
                              LogHelper.log.info('Search Tapped');
                            },
                          ),
                          IconButton(
                            icon: const Icon(EvaIcons.bellOutline),
                            onPressed: () {
                              LogHelper.log.info('Notification Tapped');
                            },
                          ),
                        ],
                      ),
                      body: SafeArea(
                        child: SizedBox(
                          height: MediaQuery.of(context).size.height,
                          width: MediaQuery.of(context).size.width,
                          child: Padding(
                            padding: const EdgeInsets.only(
                              left: 16.0,
                              right: 16.0,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Good Morning',
                                  style: Theme.of(context).textTheme.headline1,
                                ),
                                const Expanded(
                                  child: _TasksListView(),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

class _AddTaskButton extends HookConsumerWidget {
  const _AddTaskButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: () async => ref.read(tasksViewModelProvider).addANewTask(context),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100),
        ),
        color: Theme.of(context).backgroundColor,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 10,
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                EvaIcons.plus,
                color: Colors.white,
              ),
              Text(
                'Add Task',
                style: Theme.of(context).textTheme.headline4,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _TasksListView extends HookConsumerWidget {
  const _TasksListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _vm = ref.watch(tasksViewModelProvider);

    useEffect(
      () {
        _vm.getAllTasksFromDb();
        return;
      },
      const [],
    );

    if (_vm.allTasks!.isEmpty) {
      return GestureDetector(
        behavior: HitTestBehavior.translucent,
        onTap: () async => _vm.addANewTask(context),
        child: const _NoTasksView(),
      );
    }

    return ValueListenableBuilder<Box<Task>>(
        valueListenable: DatabaseServices.service.getBoxListenable()!,
        builder: (context, value, child) {
          return ListView.builder(
            itemCount: value.length,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return TaskCard(
                onEdit: (p0) {},
                task: value.getAt(index)!,
                onCompleteToggle: (p0) =>
                    _vm.markTaskComplete(_vm.allTasks![index], p0!),
              );
            },
          );
        });
  }
}

class _NoTasksView extends StatelessWidget {
  const _NoTasksView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.screenWidth,
      margin: const EdgeInsets.all(10),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'No tasks for today',
            style: Theme.of(context).textTheme.headline2,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: SvgPicture.asset(
              AppConstants.images.noTaskImage,
              height: SizeConfig.screenHeight! * 0.3,
              fit: BoxFit.fitHeight,
            ),
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(EvaIcons.plusCircleOutline),
              const SizedBox(width: 10),
              Text(
                'Add your first task',
                style: Theme.of(context).textTheme.headline4,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class AddTaskBottomSheet extends HookConsumerWidget {
  const AddTaskBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _tastTitleController = useTextEditingController();
    final _taskDescriptionController = useTextEditingController();
    Task _task = const Task(
      completed: false,
    );
    return Container(
      height: SizeConfig.screenHeight! * 0.5,
      padding: const EdgeInsets.all(10.0),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            alignment: Alignment.topRight,
            width: SizeConfig.screenWidth,
            child: IconButton(
              onPressed: () {
                Navigator.pop(context, _task);
              },
              icon: const Icon(
                EvaIcons.closeCircleOutline,
              ),
            ),
          ),
          TextField(
            controller: _tastTitleController,
            decoration: const InputDecoration(
              labelText: 'Task Title',
            ),
            onChanged: (value) => _task = _task.copyWith(title: value),
          ),
          TextField(
            controller: _taskDescriptionController,
            decoration: const InputDecoration(
              labelText: 'Task Description',
              suffixIcon: Icon(EvaIcons.infoOutline),
            ),
            onChanged: (value) => _task = _task.copyWith(description: value),
          ),
          ElevatedButton(
            onPressed: () => Navigator.pop(context, _task),
            child: const Text('Create'),
          ),
        ],
      ),
    );
  }
}
