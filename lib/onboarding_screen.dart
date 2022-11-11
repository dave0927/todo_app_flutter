import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:todo_app_flutter/components/constants.dart';
import 'package:todo_app_flutter/screens/RegistrationPage.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  void onIntroEnd(context) {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (_) => const RegistrationPage()));
  }

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
            style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
          ),
          onPressed: () => onIntroEnd(context),
        ),
      ),
      showBackButton: true,
      pages: kOnboardingImages,
      onDone: () => onIntroEnd(context),
      onSkip: () => onIntroEnd(context),
      back: const Icon(Icons.arrow_back_ios),
      next: const Icon(Icons.arrow_forward_ios),
      done: const Text('Done', style: TextStyle(fontWeight: FontWeight.w600)),
      curve: Curves.fastLinearToSlowEaseIn,
      controlsMargin: const EdgeInsets.all(10),
      dotsDecorator: kOnboardingDotDecoration,
      dotsContainerDecorator: kShapeDecoraion,
    );
  }
}
