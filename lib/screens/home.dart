import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:todo_app_flutter/providers/google_sign_in_provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  static const pageId = '/home';

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser!;

    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () => context.read<GoogleSignInProvider>().logout(),
              icon: const FaIcon(FontAwesomeIcons.arrowRightFromBracket))
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 40.0,
            backgroundImage: NetworkImage(user.photoURL!),
          ),
          const SizedBox(height: 20.0),
          Text(user.displayName!),
          const SizedBox(height: 10.0),
          Text(user.email!),
        ],
      ),
    );
  }
}
