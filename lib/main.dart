import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Bienvenue dans mon application",
          style: TextStyle(
            color: Theme.of(context).indicatorColor,
            fontSize: Theme.of(context).textTheme.bodyMedium?.fontSize,
          ),
        ),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Center(
        child: Text(
          "Hello EveryOne",
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ),
    );
  }
}
