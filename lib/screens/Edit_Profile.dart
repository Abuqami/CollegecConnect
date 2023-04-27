import 'package:collegeconnect/screens/admin_dashboard.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:collegeconnect/utilities/Extension.dart';
import 'package:collegeconnect/utilities/constants.dart';
import 'package:collegeconnect/widgets/CollegeConnect_TextFormField.dart';
import 'package:collegeconnect/widgets/Buttons/MainPagesSubmitButton.dart';
import 'package:collegeconnect/widgets/Curved_background.dart';
import 'package:collegeconnect/widgets/Buttons/backbutton.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  @override
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF9DDAC),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: backbutton(),
            ),
            curved_background(title: 'Edit Profile',),
            Expanded(
              child: Container(
                decoration: curved_backgroundDecoration,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SingleChildScrollView(
                            child: Form(
                              key: _formKey,
                              child: Column(
                                children: [
                                  CollegeConnect_TextFormField(
                                    label: 'Username',
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  CollegeConnect_TextFormField(
                                    label: 'First name',
                                    validator: (val){
                                      if(!val!.isValidName){
                                        return "Please,your name should have only characters and no space.Example; Nawaf";
                                      }
                                    },
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  CollegeConnect_TextFormField(
                                    label: 'Last name',
                                    validator: (val){
                                      if(!val!.isValidName){
                                        return "Please,your name should have only characters and no space.Example; Nawaf";
                                      }
                                    },
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  GestureDetector(
                                    onTap: (){
                                      Get.defaultDialog(
                                        title: 'Select Major',
                                        content: Column(
                                          children: [
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: [
                                                OutlinedButton(onPressed: (){
                                                  Get.back();
                                                }, child: Text("CIS"),),
                                                SizedBox(width: 10,),
                                                OutlinedButton(onPressed: (){Get.back();}, child: Text("CS"),),
                                              ],
                                            ),
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: [
                                                OutlinedButton(onPressed: (){
                                                  Get.back();
                                                }, child: Text("CYS"),),
                                                SizedBox(width: 10,),
                                                OutlinedButton(onPressed: (){
                                                  Get.back();
                                                }, child: Text("AI"),),
                                              ],
                                            ),

                                          ],
                                        ),

                                      );
                                    },
                                    child: Container(
                                      height: 50,
                                      width: 380,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(color: Colors.grey),
                                        borderRadius: BorderRadius.circular(3)
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              " Select your major",
                                              style: TextStyle(
                                                  color: Colors.grey[600],
                                                  fontSize: 17),
                                            ),
                                            FaIcon(FontAwesomeIcons.arrowRight)
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  CollegeConnect_TextFormField(
                                    label: 'Password',
                                    formObsecureText: true,
                                    validator: (val) {
                                      if (!val!.isValidPassword) {
                                        return "Minimum eight characters, at least one uppercase letter, one lowercase letter\none number and one special character";
                                      }
                                      return null;
                                    },
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  MainPagesSubmitButton(formKey: _formKey,buttonText: 'Submit',width: 135,onTap: (){
                                    if (!_formKey.currentState!.validate()) {
                                    } else {
                                    }
                                  },),
                                ],
                              ),
                            ),
                          ),
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
    );
  }
}
