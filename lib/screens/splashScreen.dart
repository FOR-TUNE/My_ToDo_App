// ignore_for_file: file_names, deprecated_member_use
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_todo_app/constants/colors.dart';
import 'package:my_todo_app/constants/sizeConfig.dart';
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
      body: Center(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                'assets/svgs/mainToDoIcon.svg',
                height: screenAwareSize(100, context),
                width: screenAwareSize(80, context, width: true),
                color: toPurple,
              ),
              addVerticalSp(2),
              const Text(
                'My ToDo App',
                style: TextStyle(
                  color: toBlack,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              addVerticalSp(15),
              SizedBox(
                child: spinkit,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
