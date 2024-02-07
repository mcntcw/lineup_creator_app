import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lineup_creator_app/screens/lineup_screen.dart';
import 'package:lineup_creator_app/utils/colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    Future.delayed(const Duration(seconds: 1), () {
      Get.off(() => LineupScreen());
    });
  }

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backgroundColor,
        body: Center(
          child: Image.asset(
            'assets/images/logo.png',
            height: 200,
            fit: BoxFit.cover,
            color: secondaryColor,
          ),
        ));
  }
}
