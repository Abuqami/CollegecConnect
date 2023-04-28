import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MainPagesSubmitButton extends StatefulWidget {
  MainPagesSubmitButton(
      {super.key,
      required GlobalKey<FormState> formKey,
      this.onTap,
      this.buttonText});

  void Function()? onTap;
  String? buttonText;

  @override
  State<MainPagesSubmitButton> createState() => _MainPagesSubmitButtonState();
}

class _MainPagesSubmitButtonState extends State<MainPagesSubmitButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        width: double.maxFinite,
        height: 48.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          color: Color(0xA9F9DDAC),
        ),
        child: Center(
          child: Text(
            '${widget.buttonText}',
            style: TextStyle(color: Colors.black87, fontSize: 14.0),
          ),
        ),
      ),
    );
  }
}
