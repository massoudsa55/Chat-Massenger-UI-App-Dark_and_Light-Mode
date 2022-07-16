import 'package:chat_massenger_ui_app/Models/chat_message.dart';
import 'package:chat_massenger_ui_app/constants.dart';
import 'package:flutter/material.dart';

class StatusDotMessage extends StatelessWidget {
  const StatusDotMessage({super.key, required this.status});
  final MessageStatus status;
  @override
  Widget build(BuildContext context) {
    Color? dotColor(MessageStatus status) {
      switch (status) {
        case MessageStatus.not_sent:
          return cErrorColor;
        case MessageStatus.not_view:
          return Theme.of(context).textTheme.bodyText1?.color?.withOpacity(0.1);
        case MessageStatus.viewed:
          return cPrimaryColor;
        default:
          Colors.transparent;
      }
      return null;
    }

    return Container(
      margin: const EdgeInsets.only(left: cDefaultPadding / 2),
      width: 15,
      height: 15,
      decoration: BoxDecoration(
        color: dotColor(status),
        shape: BoxShape.circle,
      ),
      child: Icon(
        status == MessageStatus.not_sent ? Icons.close : Icons.done,
        size: 8,
        color: Theme.of(context).scaffoldBackgroundColor,
      ),
    );
  }
}
