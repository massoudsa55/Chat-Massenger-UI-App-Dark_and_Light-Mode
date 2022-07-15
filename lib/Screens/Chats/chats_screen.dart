import 'package:chat_massenger_ui_app/Screens/Chats/Components/body.dart';
import 'package:chat_massenger_ui_app/constants.dart';
import 'package:flutter/material.dart';

class ChatsScreen extends StatefulWidget {
  const ChatsScreen({super.key});

  @override
  State<ChatsScreen> createState() => _ChatsScreenState();
}

class _ChatsScreenState extends State<ChatsScreen> {
  int _selectIndex = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: const Body(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: cPrimaryColor,
        child: const Icon(
          Icons.person_add_alt_1,
          color: Colors.white,
        ),
      ),
      bottomNavigationBar: buildBottomNavigationBar(),
    );
  }

  BottomNavigationBar buildBottomNavigationBar() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: _selectIndex,
      onTap: (value) => setState(() {
        _selectIndex = value;
      }),
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.messenger),
          label: "Chat",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.people),
          label: "People",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.call),
          label: "Call",
        ),
        BottomNavigationBarItem(
          icon: CircleAvatar(
            radius: 15,
            backgroundImage: AssetImage("assets/images/my_img.jpg"),
          ),
          label: "Messaoud",
        ),
      ],
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      automaticallyImplyLeading: false,
      title: const Text("Chats"),
      backgroundColor: cPrimaryColor,
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.search),
        ),
      ],
    );
  }
}
