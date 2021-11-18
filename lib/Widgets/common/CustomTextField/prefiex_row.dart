import 'package:flutter/material.dart';

class PrefixRow extends StatelessWidget {
  const PrefixRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Icon(Icons.flag),
        Text("+94"),
      ],
    );
  }
}
