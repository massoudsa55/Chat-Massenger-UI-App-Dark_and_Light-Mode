import 'package:chat_massenger_ui_app/Components/filled_outline_button.dart';
import 'package:chat_massenger_ui_app/constants.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: cPrimaryColor,
          child: Row(
            children: [
              FillOutlineButton(press: () {}, text: "Recent Message"),
              FillOutlineButton(press: () {}, text: "Active"),
            ],
          ),
        ),
      ],
    );
  }
}
