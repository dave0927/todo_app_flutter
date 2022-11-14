import 'package:flutter/material.dart';

class TaskTileSubtitle extends StatelessWidget {
  const TaskTileSubtitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // const Icon(Icons.linear_scale, color: Colors.black),
        Text(
          // TODO: set deadline date text
          TimeOfDay.now().format(context),
          style: const TextStyle(color: Colors.black54),
        ),
      ],
    );
  }
}
