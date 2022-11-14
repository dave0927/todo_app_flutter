import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AddItem extends StatelessWidget {
  const AddItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 40.0),
      child: FloatingActionButton.small(
        child: const FaIcon(
          FontAwesomeIcons.plus,
          color: Colors.white,
        ),
        onPressed: () {
          // TODO: add task callback
        },
      ),
    );
  }
}
