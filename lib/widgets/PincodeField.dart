import 'package:flutter/material.dart';
import 'package:pin_code_text_field/pin_code_text_field.dart';

class PincodeField extends StatelessWidget {
  PincodeField({
    this.controller,
  });
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: PinCodeTextField(
        //pinBoxDecoration: EdgeInsets.all(Colors.amber, Colors.black, 3.0,1.0),
        autofocus: false,
        controller: controller,
        maxLength: 4,
        highlight: false,
        hasUnderline: true,
        pinBoxColor: Colors.grey[300],
        highlightPinBoxColor: Colors.grey[300],

        // defaultBorderColor: Colors.green[300],
        pinBoxRadius: 15.0,
        pinBoxBorderWidth: 0.0,
        //borde
        //shape: PinCodeFieldShape.underline
      ),
    );
  }
}
