// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:my_todo_app/constants/colors.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});
  final spinkit = const SpinKitWave(
    color: toPurple,
    size: 30,
  );

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
