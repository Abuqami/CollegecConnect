import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DialogSubmitButton extends StatefulWidget {
  DialogSubmitButton({super.key, this.onPressed});

  void Function()? onPressed;

  @override
  State<DialogSubmitButton> createState() => _DialogSubmitButtonState();
}

class _DialogSubmitButtonState extends State<DialogSubmitButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      autofocus: false,
      onPressed: widget.onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.deepPurple,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            40.0,
          ),
        ),
        elevation: 0.0,
        fixedSize: Size(
          double.maxFinite,
          42.0,
        ),
      ),
      child: Text(
        "Submit",
        style: TextStyle(
          color: Colors.white,
          fontSize: 12.0,
        ),
      ),
    );
  }
}
