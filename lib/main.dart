import 'package:app/pages/chat.page.dart';
import 'package:app/pages/counter.page.dart';
import 'package:app/pages/home.page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/": (context) => HomePage(),
        "/counter": (context) => CounterPage(),
        "/chat": (context) => ChatPage(),
      },
      theme: ThemeData(
        textTheme: TextTheme(
          bodyLarge: TextStyle(fontSize: 33),
          bodyMedium: TextStyle(fontSize: 20),
          displayLarge: TextStyle(fontSize: 40),
        ),
        indicatorColor: Colors.white,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.teal,
          primary: Colors.teal,
        ),
      ),
    );
  }
}
