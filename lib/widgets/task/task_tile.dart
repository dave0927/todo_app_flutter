import 'package:flutter/material.dart';
import 'package:todo_app_flutter/components/constants.dart';
import 'package:todo_app_flutter/widgets/task/edit_task_button.dart';
import 'package:todo_app_flutter/widgets/task/leading_icon.dart';
import 'package:todo_app_flutter/widgets/task/task_subtitle.dart';

class CreateTaskTile extends StatelessWidget {
  const CreateTaskTile({
    Key? key,
    required this.taskText,
  }) : super(key: key);

  final String taskText;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(
        horizontal: 10.0,
        vertical: 10.0,
      ),
      leading: const TaskLeadingIcon(isCompleted: false),
      title: Text(taskText, style: kTaskTextStyle),
      subtitle: const TaskTileSubtitle(),
      trailing: EditTaskButton(
        onEditTaskCalled: () {
          //
        },
      ),
    );
  }
}
