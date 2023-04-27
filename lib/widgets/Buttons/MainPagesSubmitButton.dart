import 'package:flutter/material.dart';

class MainPagesSubmitButton extends StatelessWidget {
  MainPagesSubmitButton(
      {required GlobalKey<FormState> formKey,
        this.onTap,
        this.width,
        this.buttonText})
      : _formKey = formKey;

  final GlobalKey<FormState> _formKey;
  void Function()? onTap;
  String? buttonText;
  double? width;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        height: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Color(0xFFF9DDAC),
        ),
        child: Center(
          child: Text(
            '$buttonText',
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18),
          ),
        ),
      ),
    );
  }
}