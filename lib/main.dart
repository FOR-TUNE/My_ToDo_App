import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_todo_app/screens/homeScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
      ),
    );
    return MaterialApp(
      title: 'My ToDo App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        fontFamily: 'Merriweather',
      ),
      home: const HomePage(),
    );
  }
}
