import 'package:flutter/material.dart';

ThemeData get lightTheme => ThemeData(
      scaffoldBackgroundColor: Colors.white,
      backgroundColor: Colors.white,
      dividerColor: const Color(0xff1f336e),
      appBarTheme: const AppBarTheme(
        color: Colors.transparent,
        elevation: 0,
      ),
      iconTheme: const IconThemeData(
        color: Colors.black,
      ),
      fontFamily: 'Montserrat',
      textTheme: const TextTheme(
        headline1: TextStyle(
          color: Colors.black,
          fontSize: 36,
          fontWeight: FontWeight.w700,
        ),
        headline2: TextStyle(
          color: Colors.black,
          fontSize: 24,
          fontWeight: FontWeight.w700,
        ),
        headline3: TextStyle(
          color: Colors.black,
          fontSize: 20,
          fontWeight: FontWeight.w700,
        ),
        headline4: TextStyle(
          color: Colors.black,
          fontSize: 18,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
