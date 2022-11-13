import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:todo_app_flutter/components/constants.dart';
import 'package:todo_app_flutter/todo_app.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});
  static const String pageId = '/onboarding';

  void onIntroEnd(context) =>
      Navigator.pushReplacementNamed(context, TodoApp.pageId);
  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      globalBackgroundColor: Colors.white,
      globalFooter: SizedBox(
        width: double.infinity,
        height: 50.0,
        child: ElevatedButton(
          child: const Text(
            'Let\'s go right away!',
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          onPressed: () => onIntroEnd(context),
        ),
      ),
      showBackButton: true,
      isTopSafeArea: true,
      pages: kOnboardingImages,
      onDone: () => onIntroEnd(context),
      onSkip: () => onIntroEnd(context),
      back: const FaIcon(FontAwesomeIcons.circleArrowLeft),
      next: const FaIcon(FontAwesomeIcons.circleArrowRight),
      done: const Text(
        'Done',
        style: TextStyle(fontWeight: FontWeight.w600),
      ),
      curve: Curves.fastLinearToSlowEaseIn,
      controlsMargin: const EdgeInsets.all(10),
      dotsDecorator: kOnboardingDotDecoration,
      dotsContainerDecorator: kShapeDecoraion,
    );
  }
}
