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
              // TODO: toggle theme when the icon pressed
            },
            icon: const FaIcon(FontAwesomeIcons.solidLightbulb),
          ),
          actions: [
            AppAction(user: user),
          ],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(20.0),
                decoration: kSearchContainerDecoration,
                child: const TextField(
                  decoration: kSearchInputDecoration,
                ),
              ),
            ),
            const Expanded(
              flex: 4,
              child: TaskList(),
            ),
          ],
        ),
      ),
    );
  }
}
