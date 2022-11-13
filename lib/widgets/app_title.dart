import 'package:flutter/material.dart';
import 'package:todo_app_flutter/components/constants.dart';

class TodoAppTitle extends StatelessWidget {
  const TodoAppTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(text: 'To ', style: kAppTitleStyle, children: const [
        TextSpan(
          text: 'Do',
          style: TextStyle(color: kPrimaryColor),
        ),
        TextSpan(text: ' it'),
      ]),
    );
  }
}
