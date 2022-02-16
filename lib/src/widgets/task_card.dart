import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:tasks/src/helpers/size_config.dart';
import 'package:tasks/src/models/task/task.dart';

class TaskCard extends StatelessWidget {
  const TaskCard({
    Key? key,
    required this.onEdit,
    required this.task,
    required this.onCompleteToggle,
  }) : super(key: key);

  final void Function(Task) onEdit;
  final void Function(bool?) onCompleteToggle;
  final Task task;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.screenWidth,
      margin: const EdgeInsets.all(4),
      padding: const EdgeInsets.all(8),
      child: Row(
        children: [
          Radio<bool>(
            value: task.completed,
            groupValue: task.completed,
            onChanged: onCompleteToggle,
          ),
          Text(task.title),
          const Spacer(),
          IconButton(onPressed: ()=> onEdit(task), icon: const Icon(EvaIcons.edit2Outline,),),
        ],
      ),
    );
  }
}
