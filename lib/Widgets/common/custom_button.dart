import 'package:flutter/material.dart';
import 'package:nectar/constant/colors.dart';

class CustomButton extends StatelessWidget {
  final double radius;
  final Widget text;
  final double minwidth;
  final double height;
  final Color bgColor;
  final void Function()? func;

  const CustomButton(
      {Key? key,
      this.radius = 10,
      required this.text,
      this.minwidth = 300,
      this.height = 60,
      this.bgColor = primaryColor,
      this.func})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      
      color: bgColor,
      borderRadius: BorderRadius.circular(radius),
      child: MaterialButton(
        
          child: text, minWidth: minwidth, height: height, onPressed: func),
    );
  }
}
