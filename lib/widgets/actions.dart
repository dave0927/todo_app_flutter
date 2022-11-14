import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:todo_app_flutter/components/constants.dart';

class AppAction extends StatelessWidget {
  const AppAction({super.key, required this.user});
  final User user;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          user.displayName!,
          style: kOnboardingBodyStyle.copyWith(
            color: Colors.white,
            fontWeight: FontWeight.w800,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: InkWell(
            onTap: () {
              //TODO: logout and other options
            },
            child: CircleAvatar(
              backgroundImage: NetworkImage(user.photoURL!),
            ),
          ),
        ),
      ],
    );
  }
}
