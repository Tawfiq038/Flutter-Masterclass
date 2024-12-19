// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:masterclass/pages/counter_page.dart';
import 'package:masterclass/pages/first_page.dart';
import 'package:masterclass/pages/home_page.dart';
import 'package:masterclass/pages/profile_page.dart';
import 'package:masterclass/pages/settings_page.dart';
import 'package:masterclass/pages/todo_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: /*FirstPage, CounterPage*/ ToDoPage(),
      routes: {
        '/firstpage': (context) => FirstPage(),
        '/homepage': (context) => HomePage(),
        '/profilepage': (context) => ProfilePage(),
        '/settingspage': (context) => SettingsPage(),
      },
    );
  }
}
