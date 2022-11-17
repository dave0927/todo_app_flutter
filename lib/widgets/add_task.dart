import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:date_time_picker/date_time_picker.dart';
import 'package:todo_app_flutter/components/constants.dart';
import 'package:todo_app_flutter/providers/task_data_provider.dart';

class AddTask extends StatelessWidget {
  const AddTask({super.key});

  @override
  Widget build(BuildContext context) {
    String newTaskText = '';
    String scheduleDate = DateTime.now().toString();

    return Container(
      color: const Color(0xff757575),
      child: Container(
        padding: const EdgeInsets.all(20.0),
        decoration: kAddTaskContainerDecoration,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 30.0),
            ),
            TextField(
                autofocus: true,
                textAlign: TextAlign.center,
                onChanged: (value) {
                  newTaskText = value;
                }),
            const SizedBox(height: 10.0),
            DateTimePicker(
              initialValue: DateTime.now().toString(),
              type: DateTimePickerType.dateTime,
              icon: const Icon(Icons.event),
              firstDate: DateTime(2000),
              lastDate: DateTime(2100),
              use24HourFormat: false,
              autovalidate: true,
              dateMask: "d MMM, yyyy HH:mm:ss",
              dateLabelText: 'Date',
              timeLabelText: 'Hour',
              onChanged: (value) {
                scheduleDate = value;
              },
            ),
            const SizedBox(height: 10.0),
            ElevatedButton(
              onPressed: () => context
                  .read<TaskData>()
                  .addNewTask(context, newTaskText, scheduleDate),
              child: const Text(
                'Add',
                style: TextStyle(fontSize: 18.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
