import 'package:flutter/material.dart';

class EditTaskButton extends StatelessWidget {
  const EditTaskButton({
    Key? key,
    required this.onEditTaskCalled,
  }) : super(key: key);

  final Function onEditTaskCalled;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      color: Colors.black,
      iconSize: 30.0,
      icon: const Icon(Icons.keyboard_arrow_right),
      onPressed: () {
        // TODO: Edit task callback
      },
    );
  }
}
