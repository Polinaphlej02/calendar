import 'package:calendar_app/themes/constants.dart';
import 'package:flutter/material.dart';

ThemeData calendarTheme() => ThemeData(
    primaryColor: mainBrown,
    highlightColor: lightBrown,
    primaryColorDark: darkBrown,
    textTheme: const TextTheme(
      headlineLarge: TextStyle(
        fontFamily: "Mulish-VariableFont_wght",
        fontWeight: FontWeight.w900,
        fontSize: 18,
        color: Colors.white,
      ),
      headlineMedium: TextStyle(
        fontFamily: "Mulish-VariableFont_wght",
        fontWeight: FontWeight.w900,
        fontSize: 15,
        color: Colors.white,
      ),
      headlineSmall: TextStyle(
        fontFamily: "Mulish-VariableFont_wght",
        fontWeight: FontWeight.w900,
        fontSize: 13,
      ),
      titleSmall: TextStyle(
      color: Color.fromARGB(225, 46, 39, 57), fontWeight: FontWeight.w900)
    ),
    iconTheme: const IconThemeData(
      color: circleBrown,
      size: 40,
    ),
    primaryIconTheme: const IconThemeData(
      color: iconGrey,
      size: 12,
    ),
    );
