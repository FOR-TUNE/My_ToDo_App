// ignore_for_file: file_names
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:my_todo_app/constants/colors.dart';
import 'package:my_todo_app/screens/homeScreen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});
  final spinkit = const SpinKitWave(
    color: toPurple,
    size: 30,
  );

  @override
  Widget build(BuildContext context) {
    Timer(
      const Duration(seconds: 5),
      () => Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => const HomePage(),
        ),
      ),
    );
    return Scaffold(
      backgroundColor: toDoBGColor,
      body: const Center(),
    );
  }
}
