import 'package:collegeconnect/utilities/constants.dart';
import 'package:flutter/material.dart';


class cont extends StatelessWidget {
  const cont({ this.colour, this.ktext, this.tap });

  final Color? colour;
  final String? ktext;
  final tap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: tap,
      child: Container(
        width: 235,
        height: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: colour,
        ),
        child: Align(
          alignment: Alignment.center,
          child: Text(
            "$ktext",
            style: k_LandingPageButtonsTextStyle,
          ),
        ),
      ),
    );
  }
}