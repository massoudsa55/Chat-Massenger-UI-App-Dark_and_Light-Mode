import 'package:chat_massenger_ui_app/Components/filled_outline_button.dart';
import 'package:chat_massenger_ui_app/Models/chat.dart';
import 'package:chat_massenger_ui_app/Screens/Messages/message_screen.dart';
import 'package:chat_massenger_ui_app/constants.dart';
import 'package:flutter/material.dart';

import 'chat_card.dart';

class Body extends StatelessWidget {
  const Body({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.fromLTRB(
              cDefaultPadding, 0, cDefaultPadding, cDefaultPadding),
          color: cPrimaryColor,
          child: Row(
            children: [
              FillOutlineButton(press: () {}, text: "Recent Message"),
              const SizedBox(width: cDefaultPadding),
              FillOutlineButton(
                press: () {},
                text: "Active",
                isFilled: false,
              ),
            ],
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: chatsData.length,
            itemBuilder: (context, index) => ChatCard(
              chat: chatsData[index],
              press: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        MessagesScreen(chat: chatsData[index]),
                  )),
            ),
          ),
        ),
      ],
    );
  }
}
