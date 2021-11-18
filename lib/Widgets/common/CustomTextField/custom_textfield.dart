import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nectar/constant/colors.dart';

import 'prefiex_row.dart';

class CustomTextField extends StatelessWidget {
  final void Function()? ontap;
  const CustomTextField({Key? key, this.ontap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTap: ontap,
      style: const TextStyle(
        color: kBlack,
        fontWeight: FontWeight.normal,
      ),
      decoration: const InputDecoration(
        prefix: Icon(Icons.flag),
      ),
    );
  }
}
