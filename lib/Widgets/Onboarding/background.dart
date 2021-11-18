import 'package:flutter/material.dart';
import 'package:nectar/Widgets/common/img_path.dart';

class OnboardBackground extends StatelessWidget {
  final Widget child;
  const OnboardBackground({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;
    return Container(
      child: child,
      width: _width,
      height: _height,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            imgPath(imgName: "onboardBg.png"),
          ),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
