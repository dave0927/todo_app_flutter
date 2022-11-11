import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';
import 'package:introduction_screen/introduction_screen.dart';

Widget buildImage(String assetName, [double width = 300]) {
  return SvgPicture.asset('assets/$assetName');
}

PageViewModel pageViewModel(
  String? title,
  String? body,
  String image,
  PageDecoration decoration,
) {
  return PageViewModel(
    title: title,
    body: body,
    image: buildImage(image),
    decoration: decoration,
  );
}
