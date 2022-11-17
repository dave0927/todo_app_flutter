import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:todo_app_flutter/widgets/actions.dart';
import 'package:todo_app_flutter/components/constants.dart';
import 'package:todo_app_flutter/widgets/task/task_list.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  static const pageId = '/home';

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser!;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.amberAccent.shade100,
        appBar: AppBar(
          backgroundColor: kPrimaryColor,
          elevation: 0,
          leading: IconButton(
            onPressed: () {
              // TODO: sync task data to the cloud DB
            },
            icon: const FaIcon(FontAwesomeIcons.cloudArrowUp),
          ),
          actions: [AppAction(user: user)],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(20.0),
              decoration: kSearchContainerDecoration,
              child: const TextField(
                decoration: kSearchInputDecoration,
              ),
            ),
            const TaskList(),
          ],
        ),
      ),
    );
  }
}
