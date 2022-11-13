import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:todo_app_flutter/widgets/app_title.dart';
import 'package:todo_app_flutter/widgets/start_app_buttons.dart';
import 'package:todo_app_flutter/widgets/registration_body_text.dart';

class RegistrationPage extends StatelessWidget {
  const RegistrationPage({super.key});
  static const String pageId = '/registration';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const TodoAppTitle(),
              Flexible(
                child: SvgPicture.asset(
                  'assets/sign-up.svg',
                ),
              ),
              const RegistrationBodyText(),
              const SizedBox(height: 20.0),
              const StartAppButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
