//هنا فيه العناصر اللي قابله للاستعمال بشكل متكرر, ف بدال مانستعملهم لكل widget ونكرر نفس العملية نستدعيهم وخلاص
import 'package:flutter/material.dart';

const kApplicationTitleStyle = TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.bold,
    color: Color(0xFF199D8C)); //for landing_page + loginpage
const kLandingPageButtonsTextStyle = TextStyle(
  fontSize: 15,
);
const curved_backgroundDecoration = BoxDecoration(
  color: Colors.white,
  borderRadius: BorderRadius.only(
    topRight: Radius.circular(20),
    topLeft: Radius.circular(15),
  ),
);
/*
 const kbuttonsBoxDecoration = BoxDecoration(
  borderRadius:  BorderRadius.circular(),
  color: Color(0xFF199D8C),
);*/
const buttonColor = Color(0xFFF9DDAC);
const kInterfacesTitleStyle = TextStyle(
  fontSize: 26,
  fontWeight: FontWeight.bold,
); //for most of interfaces
