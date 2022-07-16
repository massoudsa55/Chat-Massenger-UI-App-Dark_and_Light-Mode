import 'package:chat_massenger_ui_app/Models/chat_message.dart';
import 'package:chat_massenger_ui_app/constants.dart';
import 'package:flutter/material.dart';

class TextMessage extends StatelessWidget {
  const TextMessage({
    Key? key,
    required this.message,
  }) : super(key: key);
  final ChatMessage message;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: cDefaultPadding * 0.75,
        vertical: cDefaultPadding / 2,
      ),
      decoration: BoxDecoration(
        color: cPrimaryColor.withOpacity(message.isSender ? 1 : 0.1),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Text(
        message.text,
        style: TextStyle(
          color: message.isSender
              ? Colors.white
              : Theme.of(context).textTheme.bodyText1?.color,
        ),
      ),
    );
  }
}
