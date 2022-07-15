import 'package:chat_massenger_ui_app/Models/chat.dart';
import 'package:chat_massenger_ui_app/constants.dart';
import 'package:flutter/material.dart';

class MessagesScreen extends StatelessWidget {
  const MessagesScreen({super.key, required this.chat});
  final Chat chat;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      title: Row(
        //crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const BackButton(),
          Stack(
            children: [
              CircleAvatar(
                radius: 20,
                backgroundImage: AssetImage(chat.image),
              ),
              Positioned(
                right: 0,
                bottom: 0,
                child: Container(
                  height: 15,
                  width: 15,
                  decoration: BoxDecoration(
                    color: chat.isActive ? cPrimaryColor : cSecondaryColor,
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Theme.of(context).scaffoldBackgroundColor,
                      width: 2,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            width: cDefaultPadding * 0.75,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                chat.name,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 2),
              Opacity(
                opacity: 0.64,
                child: Text(
                  chat.isActive ? "online" : chat.time,
                  style: TextStyle(fontSize: 14),
                ),
              ),
            ],
          ),
        ],
      ),
      actions: [
        IconButton(onPressed: () {}, icon: Icon(Icons.call)),
        IconButton(onPressed: () {}, icon: Icon(Icons.video_call)),
      ],
    );
  }
}
