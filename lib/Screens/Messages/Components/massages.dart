import 'package:chat_massenger_ui_app/Models/chat_message.dart';
import 'package:chat_massenger_ui_app/constants.dart';
import 'package:flutter/material.dart';

import 'audio_message.dart';
import 'status_do_message.dart';
import 'text_message.dart';
import 'video_message.dart';

class Messages extends StatelessWidget {
  const Messages({
    Key? key,
    required this.message,
  }) : super(key: key);
  final ChatMessage message;
  @override
  Widget build(BuildContext context) {
    Widget messageContaint(ChatMessage message) {
      switch (message.messageType) {
        case ChatMessageType.text:
          return TextMessage(message: message);
        case ChatMessageType.audio:
          return AudioMessage(message: message);
        case ChatMessageType.video:
          return VideoMessage(message: message);
        default:
          return const SizedBox();
      }
    }

    return Padding(
      padding: const EdgeInsets.only(top: cDefaultPadding / 2),
      child: Row(
        mainAxisAlignment:
            message.isSender ? MainAxisAlignment.end : MainAxisAlignment.start,
        children: [
          if (!message.isSender) ...[
            const CircleAvatar(
              radius: 15,
              backgroundImage: AssetImage("assets/images/my_img.jpg"),
            ),
          ],
          const SizedBox(width: cDefaultPadding / 2),
          messageContaint(message),
          if (message.isSender) StatusDotMessage(status: message.messageStatus),
        ],
      ),
    );
  }
}
