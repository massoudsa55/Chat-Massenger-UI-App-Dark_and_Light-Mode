import 'package:chat_massenger_ui_app/Models/chat_message.dart';
import 'package:chat_massenger_ui_app/constants.dart';
import 'package:flutter/material.dart';

import 'chat_input_field.dart';
import 'massages.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: cDefaultPadding),
            child: ListView.builder(
              itemCount: demeChatMessages.length,
              itemBuilder: (context, index) =>
                  Messages(message: demeChatMessages[index]),
            ),
          ),
        ),
        const ChatInputField(),
      ],
    );
  }
}
