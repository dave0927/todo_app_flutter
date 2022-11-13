import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:todo_app_flutter/components/constants.dart';
import 'package:todo_app_flutter/widgets/signup_button.dart';

import '../providers/google_sign_in_provider.dart';

class StartAppButtons extends StatelessWidget {
  const StartAppButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SignUpButton(
          buttonText: 'Sign Up With Google',
          buttonChildIcon: FontAwesomeIcons.google,
          buttonStyle: kButtonStyle,
          onTap: () => context.read<GoogleSignInProvider>().googleLogin(),
        ),
        const SizedBox(height: 20.0),
        SignUpButton(
          buttonText: 'Continue With No Account',
          buttonChildIcon: FontAwesomeIcons.userSlash,
          buttonStyle: kButtonStyle.copyWith(
            backgroundColor: const MaterialStatePropertyAll(Colors.black54),
          ),
          onTap: () => Navigator.pushNamed(context, '/home'),
        )
      ],
    );
  }
}
