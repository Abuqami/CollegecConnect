

import 'package:flutter/material.dart';

class CollegeConnect_TextFormField extends StatelessWidget {
  CollegeConnect_TextFormField({this.label,this.textFieldController,this.hintText,this.maxlength,this.validator,this.formObsecureText=false,this.formIcon});

  String? label;
  String? hintText;
  TextEditingController? textFieldController;
  int? maxlength;
  String? Function(String?)? validator;
  bool formObsecureText;
  Icon? formIcon;


  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: textFieldController,
      decoration: InputDecoration(
        labelText: label,
        border: OutlineInputBorder(),
        hintText: hintText,
        counterText: '',
        icon: formIcon,

      ),
      maxLength: maxlength,
      validator: validator,
      obscureText: formObsecureText,


    );
  }
}