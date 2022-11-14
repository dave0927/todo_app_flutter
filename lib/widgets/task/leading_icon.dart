import 'package:flutter/material.dart';

class TaskLeadingIcon extends StatelessWidget {
  const TaskLeadingIcon({
    Key? key,
    required this.isCompleted,
  }) : super(key: key);

  final bool isCompleted;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(
          right: BorderSide(width: 1.0, color: Colors.white24),
        ),
      ),
      child: IconButton(
        icon: isCompleted
            ? const Icon(Icons.free_cancellation)
            : const Icon(Icons.today_outlined),
        onPressed: () {},
        color: Colors.black,
      ),
    );
  }
}
