import 'package:collegeconnect/widgets/CollegeConnect_TextFormField.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:collegeconnect/widgets/Buttons/DeleteUpdateButtons.dart';
import 'package:collegeconnect/utilities/constants.dart';
import 'package:collegeconnect/widgets/Buttons/dialogSubmitButton.dart';
import 'package:collegeconnect/widgets/Curved_background.dart';
import 'package:collegeconnect/widgets/Buttons/backbutton.dart';
import 'package:collegeconnect/widgets/Buttons/DeleteUpdateButtons.dart';

class ManageCoordinator extends StatelessWidget {
  const ManageCoordinator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xFF199D8C),
        onPressed: () {
          Get.defaultDialog(
            title: "Add coordinator information",
            content: Column(
              children: [
                CollegeConnect_TextFormField(
                  label: 'Email',
                ),
                SizedBox(
                  height: 5,
                ),
                CollegeConnect_TextFormField(
                  label: 'Fname',
                ),
                SizedBox(
                  height: 5,
                ),
                CollegeConnect_TextFormField(
                  label: 'Lname',
                ),
                SizedBox(
                  height: 5,
                ),
                CollegeConnect_TextFormField(
                  label: 'Username',
                ),
                SizedBox(
                  height: 5,
                ),
                dialogSubmitButton(
                  onPressed: () {},
                ),
              ],
            ),
          );
        },
        child: FaIcon(
          FontAwesomeIcons.plus,
          color: Colors.white,
        ),
      ),
      backgroundColor: Color(0xFFF9DDAC),
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: backbutton(),
              ),
              curved_background(title: 'Manage Coordinators',),
              Expanded(
                flex: 6,
                child: Container(
                  decoration: curved_backgroundDecoration,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      SizedBox(
                        width: 300,
                        height: 300,
                        child: SingleChildScrollView(
                          child: Column(
                            children: const [
                              Coordinators(
                                kcoordinator_Name: "Mohammed",
                                kcoordinator_UserName: "Mohammed",
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Coordinators(
                                kcoordinator_Name: "Abdulrahman",
                                kcoordinator_UserName: "Abuqami",
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Coordinators(
                                kcoordinator_Name: "Saad Albaqami",
                                kcoordinator_UserName: "Saad",
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Coordinators(
                                kcoordinator_Name: "khaled Ali",
                                kcoordinator_UserName: "khaled",
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Coordinators(
                                kcoordinator_Name: "Abdulrahman",
                                kcoordinator_UserName: "Abuqami",
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Coordinators(
                                kcoordinator_Name: "Abdulrahman",
                                kcoordinator_UserName: "Abuqami",
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Coordinators(
                                kcoordinator_Name: "Abdulrahman",
                                kcoordinator_UserName: "Abuqami",
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//CHECK بكره
class Coordinators extends StatelessWidget {
  const Coordinators({
    this.kcoordinator_Name,
    this.kcoordinator_UserName,
  });
  final String? kcoordinator_Name;
  final String? kcoordinator_UserName;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 282,
      height: 44,
      padding: EdgeInsets.all(6.0),
      decoration: BoxDecoration(
        color: Color(0xFF199D8C),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            child: Row(
              children: [
                FaIcon(FontAwesomeIcons.user),
                SizedBox(
                  width: 10,
                ),
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Flexible(
                          child: Text(
                        "$kcoordinator_Name",
                        overflow: TextOverflow.ellipsis,
                      )),
                      Text(
                        "@$kcoordinator_UserName",
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Delete_UpdateButtons(
            edit_onTap: (){
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
            delete_onTap: (){
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
                middleText: "are you sure about deleting Mohammed?", //user name should come from Database...
              );
            },




          ),
        ],
      ),
    );
  }
}
