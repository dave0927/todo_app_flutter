import 'package:flutter/material.dart';
import 'package:todo_app_flutter/components/constants.dart';

class RegistrationBodyText extends StatelessWidget {
  const RegistrationBodyText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Hello There, Wellcome!',
          style: kOnboardingBodyStyle,
        ),
        const Text(
          'Get register to our app inorder to backup and sync your data across your devices easily.',
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
