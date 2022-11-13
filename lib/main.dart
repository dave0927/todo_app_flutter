import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app_flutter/todo_app.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:todo_app_flutter/screens/home.dart';
import 'package:todo_app_flutter/firebase_options.dart';
import 'package:todo_app_flutter/onboarding_screen.dart';
import 'package:todo_app_flutter/components/constants.dart';
import 'package:todo_app_flutter/screens/registration.dart';
import 'package:todo_app_flutter/providers/google_sign_in_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.android,
  );
  runApp(
    ChangeNotifierProvider(
      create: (context) => GoogleSignInProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.from(
          colorScheme: const ColorScheme.light().copyWith(
            primary: kPrimaryColor,
          ),
        ),
        initialRoute: OnboardingScreen.pageId,
        routes: {
          OnboardingScreen.pageId: (context) => const OnboardingScreen(),
          RegistrationPage.pageId: (context) => const RegistrationPage(),
          HomePage.pageId: (context) => const HomePage(),
          TodoApp.pageId: (context) => const TodoApp(),
        },
      ),
    ),
  );
}
