import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SignUpButton extends StatelessWidget {
  const SignUpButton({
    Key? key,
    required this.buttonText,
    required this.buttonChildIcon,
    required this.onTap,
    required this.buttonStyle,
  }) : super(key: key);

  final String buttonText;
  final IconData buttonChildIcon;
  final Function onTap;
  final ButtonStyle buttonStyle;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      style: buttonStyle,
      icon: FaIcon(
        buttonChildIcon,
        size: 18.0,
      ),
      label: Text(
        buttonText,
        style: const TextStyle(
          fontWeight: FontWeight.w700,
        ),
      ),
      onPressed: () => onTap(),
    );
  }
}
