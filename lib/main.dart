import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:nectar/Screens/Onbording/onboard.dart';
import 'package:nectar/Screens/Phone%20Login/phone.dart';
import 'package:nectar/Screens/Sign%20in/sign_in.dart';
import 'package:nectar/Widgets/Splash%20Screen/splash.dart';
import 'package:nectar/constant/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreen(),
        '/sign in' : (context) => const SignIn(),
        '/phone' : (context) => const PhoneLog(),
      },
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
