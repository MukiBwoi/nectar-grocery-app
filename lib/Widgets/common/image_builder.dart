import 'package:flutter/material.dart';
import 'package:nectar/Widgets/common/img_path.dart';

class ImageBuilder extends StatelessWidget {
  final String imgName;
  final BoxFit? fit;
  const ImageBuilder({Key? key, required this.imgName, this.fit}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      imgPath(imgName: imgName),
      fit: fit,  
    );
  }
}
