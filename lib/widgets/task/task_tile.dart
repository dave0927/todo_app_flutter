import 'package:flutter/material.dart';
import 'package:todo_app_flutter/components/constants.dart';
import 'package:todo_app_flutter/models/task_model.dart';
import 'package:todo_app_flutter/widgets/task/leading_icon.dart';
import 'package:todo_app_flutter/widgets/task/task_subtitle.dart';
import 'package:todo_app_flutter/widgets/task/edit_task_button.dart';

class CreateTaskTile extends StatelessWidget {
  const CreateTaskTile({
    Key? key,
    required this.taskText,
    required this.isDone,
    required this.task,
  }) : super(key: key);
  final bool isDone;
  final Task task;
  final String taskText;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(
        horizontal: 10.0,
        vertical: 10.0,
      ),
      leading: TaskLeadingIcon(
        isCompleted: isDone,
        task: task,
      ),
      title: Text(
        taskText,
        style: isDone ? kTaskDoneTextStyle : kTaskTextStyle,
      ),
      subtitle: const TaskTileSubtitle(),
      trailing: EditTaskButton(
        onEditTaskCalled: () {
          //
        },
      ),
    );
  }
}
