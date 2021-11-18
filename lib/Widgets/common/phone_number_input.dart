import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:nectar/constant/colors.dart';

class PhInputField extends StatefulWidget {

  const PhInputField({Key? key}) : super(key: key);

  @override
  _PhInputFieldState createState() => _PhInputFieldState();
}

class _PhInputFieldState extends State<PhInputField> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  final TextEditingController controller = TextEditingController();
  String initialCountry = 'NG';
  PhoneNumber number = PhoneNumber(isoCode: 'NG');

  @override
  Widget build(BuildContext context) {
    return Form(
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
              selectorTextStyle: const TextStyle(color:kBlack),
              initialValue: number,
              textFieldController: controller,
              formatInput: false,
              keyboardType:
                  const TextInputType.numberWithOptions(signed: true, decimal: true),
              
              onSaved: (PhoneNumber number) {
                print('On Saved: $number');
              },
            ),
            ElevatedButton(
              onPressed: () {
                formKey.currentState!.validate();
              },
              child: Text('Validate'),
            ),
           
            ElevatedButton(
              onPressed: () {
                formKey.currentState!.save();
              },
              child: Text('Save'),
            ),
          ],
        ),
      ),
    );
  }

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
}