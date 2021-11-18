import 'package:flutter/material.dart';
import 'package:nectar/Widgets/Sign%20in/auth_area.dart';
import 'package:nectar/Widgets/Sign%20in/background.dart';

class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: SignInBackground(
          newWidget: AuthArea(),
        ),
      ),
    );
  }
}
