import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:todo_app_flutter/widgets/page_view_model.dart';

const kPrimaryColor = Color(0xffffc100);
const kOnboardingBodyStyle = TextStyle(fontSize: 19);

const pageDecoration = PageDecoration(
  titleTextStyle: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w700),
  bodyTextStyle: kOnboardingBodyStyle,
  bodyPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
  pageColor: Colors.white,
  imagePadding: EdgeInsets.zero,
);
const kOnboardingDotDecoration = DotsDecorator(
  size: Size(10.0, 10.0),
  color: Color(0xFFBDBDBD),
  activeSize: Size(22.0, 10.0),
  activeShape: RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(25.0)),
  ),
);
const kShapeDecoraion = ShapeDecoration(
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(8.0)),
  ),
);

final kOnboardingImages = <PageViewModel>[
  pageViewModel(
      'Task Management Made Easy',
      'Managing your tasks won\'t be a struggle.',
      'onboarding-1.svg',
      pageDecoration),
  pageViewModel(
      'Smart Task Management',
      'This smart tool is designed to help you better mannage your tasks.',
      'onboarding-2.svg',
      pageDecoration),
  pageViewModel(
    'Get Things Done',
    'The app help you to do it faster from anywhere with sync across all your devices.',
    'onboarding-3.svg',
    pageDecoration,
  ),
];
