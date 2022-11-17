import 'package:flutter/material.dart';
import 'package:todo_app_flutter/components/constants.dart';
import 'package:todo_app_flutter/models/task_model.dart';
import 'package:todo_app_flutter/widgets/task/leading_icon.dart';
import 'package:todo_app_flutter/widgets/task/task_subtitle.dart';
import 'package:todo_app_flutter/widgets/task/edit_task_button.dart';

class CreateTaskTile extends StatelessWidget {
  const CreateTaskTile({
    Key? key,
    required this.task,
  }) : super(key: key);
  final Task task;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(
        horizontal: 10.0,
        vertical: 10.0,
      ),
      leading: TaskLeadingIcon(
        task: task,
      ),
      title: Text(
        task.text,
        style: task.isDone ? kTaskDoneTextStyle : kTaskTextStyle,
      ),
      subtitle: const TaskTileSubtitle(),
      trailing: task.isDone
          ? null
          : EditTaskButton(
              onEditTaskCalled: () {
                //TODO: edit task callback
              },
            ),
    );
  }
}
