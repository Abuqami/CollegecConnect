import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collegeconnect/utilities/Extension.dart';
import 'package:collegeconnect/widgets/Buttons/MainPagesSubmitButton.dart';
import 'package:collegeconnect/widgets/CollegeConnect_TextFormField.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  final _formKey = GlobalKey<FormState>();
  final _userNameController = TextEditingController();
  final _firstNameController = TextEditingController();
  final _lastNameController = TextEditingController();
  bool _academicChoiceCIS = false;
  bool _academicChoiceCS = false;
  bool _academicChoiceCYS = false;
  bool _academicChoiceAI = false;
  String _academicController = 'Select Your Profile';
  final _passworController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    updateData(
        {required String academic,
        required String userName,
        required String firstName,
        required String lastName}) async {
      CollectionReference dataUpdate =
          FirebaseFirestore.instance.collection('students');
      dataUpdate.doc(FirebaseAuth.instance.currentUser!.uid).update({
        'academic_choice': academic,
        'user_name': userName,
        'first_name': firstName,
        'last_name': lastName
      });
    }

    updatePassword(String password) async {
      User? user = FirebaseAuth.instance.currentUser;
      String newPassword = password;

      user!.updatePassword(newPassword).then((_) {
        ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('Password updated successfully')));
      }).catchError((error) {
        ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('Error updating password: $error')));
      });
    }

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          'Edit Profile',
          style: TextStyle(
            fontSize: 14.0,
            fontWeight: FontWeight.w400,
            color: Colors.black87,
          ),
        ),
        elevation: 0.0,
        leading: BackButton(
          color: Colors.black87,
        ),
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 16.0,
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.only(
                        top: 60.0,
                      ),
                      child: Form(
                        key: _formKey,
                        child: Column(
                          children: [
                            CollegeConnectTextFormField(
                              label: 'Username',
                              textFieldController: _userNameController,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            CollegeConnectTextFormField(
                              label: 'First name',
                              textFieldController: _firstNameController,
                              validator: (val) {
                                if (!val!.isValidName) {
                                  return "Please,your name should have only characters and no space.Example; Nawaf";
                                }
                                return null;
                              },
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            CollegeConnectTextFormField(
                              label: 'Last name',
                              textFieldController: _lastNameController,
                              validator: (val) {
                                if (!val!.isValidName) {
                                  return "Please,your name should have only characters and no space.Example; Nawaf";
                                }
                                return null;
                              },
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            GestureDetector(
                              onTap: () {
                                Get.defaultDialog(
                                  title: 'Select Major',
                                  content: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          OutlinedButton(
                                            onPressed: () {
                                              setState(() {
                                                _academicChoiceCIS = true;
                                                _academicChoiceCS = false;
                                                _academicChoiceCYS = false;
                                                _academicChoiceAI = false;
                                                _academicChoiceCIS == true
                                                    ? _academicController =
                                                        'CIS'
                                                    : _academicController;
                                              });
                                              Get.back();
                                            },
                                            child: Text("CIS"),
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          OutlinedButton(
                                            onPressed: () {
                                              setState(() {
                                                _academicChoiceCIS = false;
                                                _academicChoiceCYS = false;
                                                _academicChoiceAI = false;
                                                _academicChoiceCS = true;
                                                _academicChoiceCS == true
                                                    ? _academicController = 'CS'
                                                    : _academicController;
                                              });
                                              Get.back();
                                            },
                                            child: Text("CS"),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          OutlinedButton(
                                            onPressed: () {
                                              setState(() {
                                                _academicChoiceCIS = false;
                                                _academicChoiceCS = false;
                                                _academicChoiceAI = false;
                                                _academicChoiceCYS = true;
                                                _academicChoiceCYS == true
                                                    ? _academicController =
                                                        'CYS'
                                                    : _academicController;
                                              });
                                              Get.back();
                                            },
                                            child: Text("CYS"),
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          OutlinedButton(
                                            onPressed: () {
                                              setState(() {
                                                _academicChoiceCIS = false;
                                                _academicChoiceCS = false;
                                                _academicChoiceCYS = false;
                                                _academicChoiceAI = true;
                                                _academicChoiceAI == true
                                                    ? _academicController = 'AI'
                                                    : _academicController;
                                              });
                                              Get.back();
                                            },
                                            child: Text("AI"),
                                          ),
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
                                    borderRadius: BorderRadius.circular(3)),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        _academicController,
                                        style: TextStyle(
                                          color: Colors.grey[600],
                                          fontSize: 12.0,
                                        ),
                                      ),
                                      FaIcon(
                                        FontAwesomeIcons.arrowRight,
                                        size: 18.0,
                                        color: Colors.black87,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            CollegeConnectTextFormField(
                              textFieldController: _passworController,
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
                              height: 82.0,
                            ),
                            MainPagesSubmitButton(
                              formKey: _formKey,
                              buttonText: 'Save',
                              onTap: () async {
                                updateData(
                                    academic: _academicController,
                                    userName: _userNameController.text,
                                    firstName: _firstNameController.text,
                                    lastName: _lastNameController.text);
                                updatePassword(_passworController.text);
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
