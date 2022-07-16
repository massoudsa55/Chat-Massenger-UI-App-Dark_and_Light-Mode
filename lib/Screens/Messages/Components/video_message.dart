import 'package:chat_massenger_ui_app/Models/chat_message.dart';
import 'package:chat_massenger_ui_app/constants.dart';
import 'package:flutter/material.dart';

class VideoMessage extends StatelessWidget {
  const VideoMessage({super.key, required this.message});
  final ChatMessage message;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.55,
      child: AspectRatio(
        aspectRatio: 1.6,
        child: Stack(
          alignment: Alignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset("assets/images/video_place_here.png"),
            ),
            Container(
              width: 25,
              height: 25,
              decoration: const BoxDecoration(
                color: cPrimaryColor,
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.play_arrow,
                color: Colors.white,
                size: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
