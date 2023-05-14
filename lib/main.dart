import 'package:flutter/material.dart';
import 'package:my_todo_app/screens/homeScreen.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'My ToDo App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        fontFamily: 'Merriweather',
      ),
      home: const HomePage(),
    ),
  );
}
