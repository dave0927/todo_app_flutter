import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app_flutter/providers/task_data_provider.dart';
import 'package:todo_app_flutter/widgets/task/task_tile.dart';

class TaskListBuilder extends StatelessWidget {
  const TaskListBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (BuildContext context, taskData, Widget? child) {
        return taskData.taskCouter != 0
            ? Container(
                padding: const EdgeInsets.all(20.0),
                child: ListView.builder(
                  //TODO: display all task that are completed & not completed
                  itemCount: taskData.taskCouter,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) {
                    return Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      elevation: taskData.tasks[index].isDone ? 2.0 : 4.0,
                      margin: const EdgeInsets.symmetric(
                          horizontal: 10.0, vertical: 6.0),
                      color: taskData.tasks[index].isDone
                          ? Colors.grey.shade200
                          : Colors.white,
                      child: CreateTaskTile(
                        task: taskData.tasks[index],
                      ),
                    );
                  },
                ),
              )
            : const Center(
                child: Text(
                  'No task available',
                  style: TextStyle(fontSize: 18.0),
                ),
              );
      },
    );
  }
}
