import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:nectar/Widgets/common/CustomTextField/custom_textfield.dart';

import 'package:nectar/Widgets/common/custom_text.dart';
import 'package:nectar/Widgets/common/image_builder.dart';
import 'package:nectar/Widgets/common/phone_number_input.dart';
import 'package:nectar/constant/colors.dart';
import 'package:nectar/model/user.dart';

class PhoneLog extends StatefulWidget {
  const PhoneLog({Key? key}) : super(key: key);

  @override
  State<PhoneLog> createState() => _PhoneLogState();
}

class _PhoneLogState extends State<PhoneLog> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  final TextEditingController controller = TextEditingController();
  String initialCountry = 'NG';
  PhoneNumber number = PhoneNumber(isoCode: 'NG');
  void getPhoneNumber(String phoneNumber) async {
    PhoneNumber number =
        await PhoneNumber.getRegionInfoFromPhoneNumber(phoneNumber, 'US');

    setState(() {
      this.number = number;
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (formKey.currentState!.validate()) {
            formKey.currentState!.save();
            debugPrint(number.phoneNumber);
            print("clicked");
          } else {
            print("clicked");
            formKey.currentState!.save();
            debugPrint(controller.text);
          }
        },
        child: const Icon(Icons.arrow_forward),
        backgroundColor: primaryColor,
      ),
      backgroundColor: kWhite,
      appBar: AppBar(
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: const ImageBuilder(
              imgName: "VectorBack.png",
            )),
        backgroundColor: kWhite,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            const CustomText(
              fontSize: 20,
              color: kBlack,
              fontWeight: FontWeight.bold,
              text: "Enter your mobile number",
            ),
            const SizedBox(
              height: 40,
            ),
            const CustomText(
              color: Colors.grey,
              text: "Mobile Number",
              fontWeight: FontWeight.bold,
            ),
            const SizedBox(
              height: 10,
            ),
            Form(
              key: formKey,
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    InternationalPhoneNumberInput(
                      onInputChanged: (PhoneNumber number) {
                        print(number.phoneNumber);
                      },
                      onInputValidated: (bool value) {
                        print(value);
                      },
                      selectorConfig: const SelectorConfig(
                        selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
                      ),
                      ignoreBlank: false,
                      autoValidateMode: AutovalidateMode.disabled,
                      selectorTextStyle: const TextStyle(color: kBlack),
                      initialValue: number,
                      textFieldController: controller,
                      formatInput: false,
                      keyboardType: const TextInputType.numberWithOptions(
                          signed: true, decimal: true),
                      onSaved: (PhoneNumber number) {
                        User(number.phoneNumber.toString());
                      },
                    ),
                    
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
