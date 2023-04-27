/*
GestureDetector(
          onTap: (){
            Get.defaultDialog(title: "Update Coordinator Information",
              content: Column(
                children: [
                  CollegeConnect_TextFormField(label: 'Email',),
                  SizedBox(height: 5,),
                  CollegeConnect_TextFormField(label: 'Fname',),
                  SizedBox(height: 5,),
                  CollegeConnect_TextFormField(label: 'Lname',),
                  SizedBox(height: 5,),
                  CollegeConnect_TextFormField(label: 'Username',),
                  SizedBox(height: 5,),
                  dialogSubmitButton(onPressed: (){},),
                ],
              ),
            );
          },
          child: FaIcon(
            FontAwesomeIcons.pen,
            size: 18,
          ),
        ),
 */
/*
Get.defaultDialog(

              title: "Warning!",
              onCancel: () {
                //cancel the process?
              },
              onConfirm: () {
                //when it comes do deleting widgets, we will use this block of area for conforming the deletion process
              },
              cancelTextColor: Colors.red,
              confirmTextColor: Colors.black,
              titleStyle: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
              buttonColor: Colors.white,
              middleText: "are you sure about deleting Mohammed?",
            );
 */

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:collegeconnect/widgets/CollegeConnect_TextFormField.dart';
import 'package:collegeconnect/widgets/Buttons/dialogSubmitButton.dart';

class Delete_UpdateButtons extends StatelessWidget {
   Delete_UpdateButtons({
    this.edit_onTap,this.delete_onTap,
  });
  void Function()? edit_onTap;
  void Function()? delete_onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: edit_onTap,
          child: FaIcon(
            FontAwesomeIcons.pen,
            size: 18,
          ),
        ),
        SizedBox(
          width: 20,
        ),
        GestureDetector(
          onTap: delete_onTap,
          child: FaIcon(
            FontAwesomeIcons.minus,
            size: 18,
          ),
        ),
        SizedBox(
          width: 10,
        )
      ],
    );
  }
}


