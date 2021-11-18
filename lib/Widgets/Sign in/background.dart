import 'package:flutter/material.dart';
import 'package:nectar/Widgets/common/img_path.dart';

class SignInBackground extends StatelessWidget {
  final Widget newWidget;
  const SignInBackground({Key? key, required this.newWidget}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(imgPath(imgName: "authentication.png")))),
          height: _height * 0.47,
          width: _width,
        ),
        newWidget
      ],
    );
  }
}
