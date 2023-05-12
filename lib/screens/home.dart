import 'package:flutter/material.dart';
import 'package:my_todo_app/constants/colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: toPurple.withOpacity(0.5),
        elevation: 0,
        backgroundColor: toDoBGColor,
        leading: const Icon(Icons.menu, color: toBlack, size: 30),
        title: const Text(
          'My ToDo App',
          style: TextStyle(
            color: toBlack,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      backgroundColor: toDoBGColor,
      body: const SafeArea(
        child: Center(),
      ),
    );
  }
}
