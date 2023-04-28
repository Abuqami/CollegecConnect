import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collegeconnect/students_model.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'confirm_account_page.dart';

class InformationsThirdPage extends StatefulWidget {
  InformationsThirdPage(
      {required this.userName,
      required this.firstName,
      required this.lastName,
      required this.imageProfile});

  final String userName;
  final String firstName;
  final String lastName;
  final String imageProfile;

  @override
  _InformationsThirdPageState createState() => _InformationsThirdPageState();
}

class _InformationsThirdPageState extends State<InformationsThirdPage> {
  String getCurrentUser() {
    final User? user = FirebaseAuth.instance.currentUser;

    if (user != null) {
      final userId = user.uid;
      return userId;
    } else {
      return '';
    }
  }

  bool? check1 = false, check2 = false, check3 = false, check4 = false;
  late final String academic;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0.0,
            leading: BackButton(
              color: Colors.black87,
            )),
        body: SingleChildScrollView(
            child: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.symmetric(
            horizontal: 32.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  alignment: Alignment.center,
                  child: Image.asset(
                    'Images/Thi.png',
                  )),
              const SizedBox(
                height: 110,
              ),
              Text(
                "Choose Your Academic Major",
                style: GoogleFonts.quicksand(
                    fontSize: 16.0, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(.1),
                  border: Border.all(
                    color: Colors.grey.withOpacity(
                      .2,
                    ),
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      2.0,
                    ),
                  ),
                ),
                child: CheckboxListTile(
                  //checkbox positioned at right
                  checkboxShape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      10.0,
                    ),
                  ),
                  value: check1,
                  onChanged: (bool? value) {
                    setState(() {
                      check1 = value;
                      check2 = false;
                      check3 = false;
                      check4 = false;
                      academic = 'CYS';
                    });
                  },
                  title: Text("CYS"),
                  activeColor: Colors.indigo,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(.1),
                  border: Border.all(
                    color: Colors.grey.withOpacity(
                      .2,
                    ),
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      2.0,
                    ),
                  ),
                ),
                child: CheckboxListTile(
                  //checkbox positioned at right
                  checkboxShape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      10.0,
                    ),
                  ),
                  value: check2,
                  onChanged: (bool? value) {
                    setState(() {
                      check1 = false;
                      check2 = value;
                      check3 = false;
                      check4 = false;
                      academic = 'AI';
                    });
                  },
                  title: Text("AI"),
                  activeColor: Colors.redAccent,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(.1),
                  border: Border.all(
                    color: Colors.grey.withOpacity(
                      .2,
                    ),
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      2.0,
                    ),
                  ),
                ),
                child: CheckboxListTile(
                  //checkbox positioned at right
                  checkboxShape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      10.0,
                    ),
                  ),
                  value: check3,
                  onChanged: (bool? value) {
                    setState(() {
                      check1 = false;
                      check2 = false;
                      check3 = value;
                      check4 = false;
                      academic = 'CIS';
                    });
                  },
                  title: Text("CIS"),
                  activeColor: Colors.amber,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(.1),
                  border: Border.all(
                    color: Colors.grey.withOpacity(
                      .2,
                    ),
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      2.0,
                    ),
                  ),
                ),
                child: CheckboxListTile(
                  //checkbox positioned at right
                  checkboxShape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      10.0,
                    ),
                  ),
                  value: check4,
                  onChanged: (bool? value) {
                    setState(() {
                      check1 = false;
                      check2 = false;
                      check3 = false;
                      check4 = value;
                      academic = 'CS';
                    });
                  },
                  title: Text("CS"),
                  activeColor: Colors.green[500],
                ),
              ),
              Container(
                alignment: FractionalOffset.center,
                margin: EdgeInsets.only(top: 62.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    GestureDetector(
                      onTap: () async {
                        final student = StudentsModel(
                          userId: getCurrentUser(),
                          userName: widget.userName,
                          firstName: widget.firstName,
                          lastName: widget.lastName,
                          imageLink: widget.imageProfile,
                          academicChoice: academic,
                        );
                        createDataStudents(student);
                        Get.to(
                          ConfirmAccountPage(),
                        );
                      },
                      child: Container(
                        height: 42.0,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0xFFF9DDAC),
                        ),
                        padding: const EdgeInsets.all(8),
                        // Change button text when light changes state.
                        child: const Text(
                          'Next',
                          style: TextStyle(
                            color: Colors.black87,
                            fontSize: 14.0,
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        margin: EdgeInsets.only(top: 12.0),
                        height: 42.0,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0x29199D8C),
                        ),
                        padding: const EdgeInsets.all(8),
                        // Change button text when light changes state.
                        child: const Text(
                          'Back',
                          style: TextStyle(
                            color: Colors.black87,
                            fontSize: 14.0,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        )));
  }

  Future<void> createDataStudents(StudentsModel student) async {
    final docUser = await FirebaseFirestore.instance
        .collection('students')
        .doc(FirebaseAuth.instance.currentUser!.uid);
    student.id = docUser.id;
    final json = student.toJson();
    await docUser.set(json);
  }
}
