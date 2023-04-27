import 'package:flutter/material.dart';

class dialogSubmitButton extends StatelessWidget {
  dialogSubmitButton({this.onPressed});

   void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(

      autofocus: false,
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        primary: Color(0xFFF9DDAC),
      ),
      child: Text(
        "Submit",
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 18,
        ),

      ),
    );
  }
}
