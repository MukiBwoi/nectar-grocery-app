import 'package:flutter/material.dart';


class CustomHBox extends StatelessWidget {
  const CustomHBox({Key? key, this.h, this.w}) : super(key: key);
  final num? h;
  final num? w;

  @override
  Widget build(BuildContext context) {
      double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;
    return SizedBox(
      height: _height*h!,
      width: _width*w!,
    );
  }
}
