import 'package:chat_massenger_ui_app/Screens/SignInOrSignUp/signin_or_signup.dart';
import 'package:chat_massenger_ui_app/theme.dart';
import 'package:flutter/material.dart';

import 'Screens/Chats/chats_screen.dart';
import 'Screens/Home/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Chat/Massenger app',
      theme: lightThemeData(context),
      darkTheme: darkThemeData(context),
      themeMode: ThemeMode.system,
      routes: {
        "SigninOrSignup": (context) => const SigninOrSignupScreen(),
        "ChatsScreen": (context) => const ChatsScreen(),
      },
      home: const HomeScreen(),
    );
  }
}
