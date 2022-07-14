import 'package:flutter/material.dart';
import 'package:chat_massenger_ui_app/constants.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData lightThemeData(BuildContext context) {
  return ThemeData.light().copyWith(
    primaryColor: cPrimaryColor,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: appBarTheme,
    iconTheme: const IconThemeData(color: cContentColorLightTheme),
    textTheme: GoogleFonts.interTextTheme(Theme.of(context).textTheme)
        .apply(bodyColor: cContentColorLightTheme),
    colorScheme: const ColorScheme.light(
      primary: cPrimaryColor,
      secondary: cSecondaryColor,
      error: cErrorColor,
    ),
  );
}

ThemeData darkThemeData(BuildContext context) {
  return ThemeData.dark().copyWith(
    primaryColor: cPrimaryColor,
    scaffoldBackgroundColor: cContentColorLightTheme,
    appBarTheme: appBarTheme,
    iconTheme: const IconThemeData(color: cContentColorDarkTheme),
    textTheme: GoogleFonts.interTextTheme(Theme.of(context).textTheme)
        .apply(bodyColor: cContentColorDarkTheme),
    colorScheme: const ColorScheme.dark().copyWith(
      primary: cPrimaryColor,
      secondary: cSecondaryColor,
      error: cErrorColor,
    ),
  );
}

// ignore: prefer_const_constructors
final appBarTheme = AppBarTheme(centerTitle: false, elevation: 0);
