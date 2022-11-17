import 'dart:collection';

import 'package:flutter/cupertino.dart';
import 'package:todo_app_flutter/models/task_model.dart';

class TaskData extends ChangeNotifier {
  final List<Task> _tasks = [];
  int get taskCouter => _tasks.length;
  UnmodifiableListView<Task> get tasks => UnmodifiableListView(_tasks);

  void addNewTask(
      BuildContext context, String newTaskText, String scheduledDate) {
    try {
      if (newTaskText != '') {
        final Task newTask =
            Task(text: newTaskText, scheduledDate: scheduledDate);
        _tasks.add(newTask);
        Navigator.pop(context);
      } else {
        Navigator.pop(context);
      }
      notifyListeners();
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  void deleteTask(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }

  void toggle(Task task) {
    task.toggleDone();
    notifyListeners();
  }
}
