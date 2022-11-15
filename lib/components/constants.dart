import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:todo_app_flutter/onboarding_screen.dart';
import 'package:todo_app_flutter/screens/home.dart';
import 'package:todo_app_flutter/screens/registration.dart';
import 'package:todo_app_flutter/todo_app.dart';
import 'package:todo_app_flutter/widgets/page_view_model.dart';
import 'package:todo_app_flutter/screens/task%20list/all_items.dart';
import 'package:todo_app_flutter/screens/task%20list/completed_items.dart';
import 'package:todo_app_flutter/screens/task%20list/uncompleted_items.dart';

const kPrimaryColor = Color(0xffffc100);
const kTaskTextStyle =
    TextStyle(color: Colors.black, fontWeight: FontWeight.bold);

final kAppPageRoutes = <String, Widget Function(BuildContext)>{
  OnboardingScreen.pageId: (BuildContext context) => const OnboardingScreen(),
  RegistrationPage.pageId: (BuildContext context) => const RegistrationPage(),
  HomePage.pageId: (BuildContext context) => const HomePage(),
  TodoApp.pageId: (BuildContext context) => const TodoApp(),
};

const kSearchInputDecoration = InputDecoration(
  filled: true,
  hintText: 'Search a task',
  fillColor: Color(0xffffffff),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.white),
    borderRadius: BorderRadius.all(Radius.circular(20)),
  ),
  contentPadding: EdgeInsets.symmetric(horizontal: 20),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.white),
    borderRadius: BorderRadius.all(Radius.circular(20)),
  ),
  suffixIcon: Icon(Icons.search),
);

const kSearchContainerDecoration = BoxDecoration(
  color: kPrimaryColor,
  borderRadius: BorderRadius.only(
    bottomLeft: Radius.circular(30.0),
    bottomRight: Radius.circular(30.0),
  ),
);

final kOnboardingBodyStyle = GoogleFonts.redHatDisplay(
  textStyle: const TextStyle(
    fontSize: 18,
    color: Colors.black87,
  ),
);

final kAppTitleStyle = GoogleFonts.staatliches(
  textStyle: const TextStyle(
    fontSize: 32.0,
    color: Colors.black54,
    letterSpacing: 2,
    fontWeight: FontWeight.w900,
  ),
);

final kButtonStyle = ElevatedButton.styleFrom(
  elevation: 0,
  minimumSize: const Size(double.infinity, 45.0),
);

final pageDecoration = PageDecoration(
  titleTextStyle: const TextStyle(fontSize: 28.0, fontWeight: FontWeight.w700),
  bodyTextStyle: kOnboardingBodyStyle,
  bodyPadding: const EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
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

final List _tabText = ['All', 'Completed', 'Uncompleted'];
List<Widget> kBottomSheetTextItems = [
  Tab(text: _tabText[0]),
  Tab(text: _tabText[1]),
  Tab(text: _tabText[2]),
];

List<Widget> pages = [
  const AllItems(),
  const CompletedItems(),
  const UncompletedItems(),
];
