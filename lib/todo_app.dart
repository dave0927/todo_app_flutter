import 'package:flutter/material.dart';
import 'package:todo_app_flutter/components/constants.dart';
import 'package:todo_app_flutter/onboarding_screen.dart';

class TodoApp extends StatelessWidget {
  const TodoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.from(
        colorScheme: const ColorScheme.light().copyWith(
          primary: kPrimaryColor,
        ),
      ),
      home: const OnboardingScreen(),
    );
  }
}
