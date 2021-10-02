// ignore_for_file: prefer_const_constructors

import 'package:auth1/constants.dart';
import 'package:auth1/welcome.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'AUTH PAGE 1',
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: kBackgroundColor,
        textTheme: TextTheme(
          headline5: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w400,
          ),
          headline6: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w400,
          ),
          button: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w400,
          ),
        ),
        inputDecorationTheme: InputDecorationTheme(
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colors.white.withOpacity(.2),
            ),
          ),
        ),
      ),
      home: const WelcomeScreen(),
    );
  }
}
