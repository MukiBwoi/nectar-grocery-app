import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nectar/Widgets/common/custom_button.dart';
import 'package:nectar/Widgets/common/custom_sizebox.dart';
import 'package:nectar/Widgets/common/custom_text.dart';
import 'package:nectar/Widgets/common/CustomTextField/custom_textfield.dart';
import 'package:nectar/Widgets/common/image_builder.dart';
import 'package:nectar/constant/colors.dart';

class AuthArea extends StatelessWidget {
  const AuthArea({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;
    return SizedBox(
      width: _width,
      height: _height * 0.5,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomText(
                  color: kBlack,
                  text: "Get your groceries\nwith nectar",
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomTextField(
                  ontap: () {
                    Navigator.pushNamed(context, '/phone');
                  },
                ),
              ],
            ),
          ),
          const CustomText(
            color: kBlack,
            text: "Or connect with social media",
            fontWeight: FontWeight.w300,
            textAlign: TextAlign.center,
          ),
          CustomButton(
            minwidth: _width * 0.85,
            radius: 20,
            text: const ImageBuilder(imgName: "google.png"),
            bgColor: const Color(0xff3498db),
          ),
          CustomButton(
            minwidth: _width * 0.85,
            radius: 20,
            text: const ImageBuilder(imgName: "facebook.png"),
            bgColor: const Color(0xff2980b9),
          ),
        ],
      ),
    );
  }
}
