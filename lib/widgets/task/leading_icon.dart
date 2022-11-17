import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app_flutter/models/task_model.dart';
import 'package:todo_app_flutter/providers/task_data_provider.dart';

class TaskLeadingIcon extends StatelessWidget {
  const TaskLeadingIcon({
    Key? key,
    required this.task,
  }) : super(key: key);

  final Task task;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(
          right: BorderSide(width: 1.0, color: Colors.white24),
        ),
      ),
      child: IconButton(
        icon: task.isDone
            ? const Icon(Icons.check_circle_outline_outlined)
            : const Icon(Icons.circle_outlined),
        onPressed: () => context.read<TaskData>().toggle(task),
        color: Colors.black,
      ),
    );
  }
}
