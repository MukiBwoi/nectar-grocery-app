import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:nectar/Widgets/Onboarding/background.dart';
import 'package:nectar/Widgets/common/custom_button.dart';
import 'package:nectar/Widgets/common/custom_sizebox.dart';
import 'package:nectar/Widgets/common/custom_text.dart';
import 'package:nectar/Widgets/common/image_builder.dart';
import 'package:nectar/constant/colors.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OnboardBackground(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const SizedBox(
              child: ImageBuilder(imgName: "carrot.png"),
            ),
            const CustomHBox(
              w: 1,
              h: 0.04,
            ),
            const CustomText(
              color: kWhite,
              text: "Welcome\nto our store",
              textAlign: TextAlign.center,
              fontSize: 48,
            ),
            const CustomHBox(
              w: 1,
              h: 0.01,
            ),
            const CustomText(
              color: kWhite,
              text: 'Ger your groceries in as fast as one hour',
              fontWeight: FontWeight.w300,
            ),
            const CustomHBox(
              w: 1,
              h: 0.04,
            ),
            CustomButton(
              text: const CustomText(color: kWhite, text: "Get Started"),
              func: () {
                Navigator.pushNamed(context, '/sign in');
              },
            ),
            const CustomHBox(
              w: 1,
              h: 0.1,
            ),
          ],
        ),
      ),
    );
  }
}
