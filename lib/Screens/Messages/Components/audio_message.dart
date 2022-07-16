import 'package:chat_massenger_ui_app/Models/chat_message.dart';
import 'package:chat_massenger_ui_app/constants.dart';
import 'package:flutter/material.dart';

class AudioMessage extends StatelessWidget {
  const AudioMessage({super.key, required this.message});
  final ChatMessage message;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.5,
      height: 40,
      padding: const EdgeInsets.symmetric(
        horizontal: cDefaultPadding * 0.75,
        vertical: cDefaultPadding / 2.5,
      ),
      decoration: BoxDecoration(
        color: cPrimaryColor.withOpacity(message.isSender ? 1 : 0.1),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        children: [
          Icon(
            Icons.play_arrow,
            color: message.isSender ? Colors.white : cPrimaryColor,
          ),
          Expanded(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: cDefaultPadding / 2),
              child: Stack(
                clipBehavior: Clip.none,
                alignment: Alignment.center,
                children: [
                  Container(
                    width: double.infinity,
                    height: 2,
                    color: cPrimaryColor.withOpacity(0.4),
                  ),
                  Positioned(
                    right: 0,
                    child: Container(
                      width: 8,
                      height: 8,
                      decoration: const BoxDecoration(
                        color: cPrimaryColor,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Text(
            "2.41",
            style: TextStyle(
              fontSize: 12,
              color: message.isSender ? Colors.white : null,
            ),
          )
        ],
      ),
    );
  }
}
