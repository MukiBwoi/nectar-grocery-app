import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:nectar/Screens/Onbording/onboard.dart';
import 'package:nectar/constant/colors.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      animationDuration: const Duration(seconds: 2),
      backgroundColor: primaryColor,
      splash: 'assets/images/logo.png',
      nextScreen: const Onboarding(),
    );
  }
}
