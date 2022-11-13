import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:todo_app_flutter/screens/home.dart';
import 'package:todo_app_flutter/screens/registration.dart';

class TodoApp extends StatelessWidget {
  const TodoApp({super.key});
  static const String pageId = '/todoApp';
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          const Center(child: CircularProgressIndicator());
        } else if (snapshot.hasData) {
          return const HomePage();
        } else if (snapshot.hasError) {
          return const Center(child: Text('Something went Wrong!'));
        }
        return const RegistrationPage();
      },
    );
  }
}
