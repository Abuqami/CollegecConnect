import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CollegeConnectTextFormField extends StatefulWidget {
  CollegeConnectTextFormField(
      {super.key,
      this.label,
      this.textFieldController,
      this.hintText,
      this.minLength,
      this.validator,
      this.formObsecureText = false,
      this.formIcon});

  String? label;
  String? hintText;
  TextEditingController? textFieldController;
  int? minLength;
  String? Function(String?)? validator;
  bool formObsecureText;
  Icon? formIcon;

  @override
  State<CollegeConnectTextFormField> createState() =>
      _CollegeConnectTextFormFieldState();
}

class _CollegeConnectTextFormFieldState
    extends State<CollegeConnectTextFormField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.textFieldController,
      decoration: InputDecoration(
          labelText: widget.label,
          labelStyle: TextStyle(
              fontSize: 10.0,
              fontStyle: FontStyle.italic,
              color: Colors.grey.withOpacity(.5)),
          border: OutlineInputBorder(),
          hintText: widget.hintText,
          counterText: '',
          icon: widget.formIcon,
          hintStyle: TextStyle(fontSize: 12.0, fontStyle: FontStyle.italic)),
      maxLength: widget.minLength,
      validator: widget.validator,
      obscureText: widget.formObsecureText,
    );
  }
}
