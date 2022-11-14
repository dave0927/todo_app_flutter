import 'package:flutter/material.dart';
import 'package:todo_app_flutter/widgets/task/task_tile.dart';

class TaskListBuilder extends StatelessWidget {
  const TaskListBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      child: Expanded(
        child: ListView.builder(
          itemCount: 4, //TODO: make it dynamic
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) {
            return Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              elevation: 4.0,
              margin:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
              child: CreateTaskTile(
                taskText: 'Task ${index + 1}',
              ),
            );
          },
        ),
      ),
    );
  }
}
