import 'package:flutter/material.dart';

ThemeData get darkTheme => ThemeData(
      scaffoldBackgroundColor: const Color(0xff3d47af),
      backgroundColor: const Color(0xff0a155a),
      dividerColor: const Color(0xff1f336e),
      appBarTheme: const AppBarTheme(
        color: Colors.transparent,
        elevation: 0,
      ),
      fontFamily: 'Montserrat',
      iconTheme: const IconThemeData(
        color: Colors.white,
      ),
      textTheme: const TextTheme(
        headline1: TextStyle(
          color: Colors.white,
          fontSize: 36,
          fontWeight: FontWeight.w700,
        ),
        headline2: TextStyle(
          color: Colors.white,
          fontSize: 24,
          fontWeight: FontWeight.w700,),),
    );
