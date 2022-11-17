import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:todo_app_flutter/firebase_options.dart';
import 'package:todo_app_flutter/onboarding_screen.dart';
import 'package:todo_app_flutter/components/constants.dart';
import 'package:todo_app_flutter/providers/task_data_provider.dart';
import 'package:todo_app_flutter/providers/google_sign_in_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.android,
  );
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => GoogleSignInProvider()),
        ChangeNotifierProvider(create: (context) => TaskData()),
      ],
      child: MaterialApp(
        locale: const Locale('Et'),
        title: 'ToDoIt',
        debugShowCheckedModeBanner: false,
        theme: ThemeData.from(
          colorScheme: const ColorScheme.light().copyWith(
            primary: kPrimaryColor,
            secondary: kPrimaryColor,
          ),
        ),
        initialRoute: OnboardingScreen.pageId,
        routes: kAppPageRoutes,
      ),
    ),
  );
}
