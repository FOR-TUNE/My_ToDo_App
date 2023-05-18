// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:my_todo_app/constants/colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      backgroundColor: toDoBGColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 15,
          ),
          child: Column(
            children: [
              searchBox(),
            ],
          ),
        ),
      ),
    );
  }

  Widget searchBox() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: const TextField(
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(8),
          prefixIcon: Icon(
            Icons.search,
            color: toBlack,
            size: 20,
          ),
          prefixIconConstraints: BoxConstraints(
            maxHeight: 20,
            minWidth: 25,
          ),
          border: InputBorder.none,
          hintText: 'Search',
          hintStyle: TextStyle(
            color: toGrey,
          ),
        ),
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
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
    );
  }
}
