import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../user_infos.dart';
import 'RegisterDigitCode.dart';
import 'landing_page.dart';

class MyApp3 extends StatelessWidget {
  MyApp3({
    this.userName,
    this.firstName,
    this.lastName,
  });

  late String? userName;
  late String? firstName;
  late String? lastName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Home3(
        userName: this.userName,
        firstName: this.firstName,
        lastName: this.lastName,
      ),
    );
  }
}

class Home3 extends StatefulWidget {
  Home3({
    this.userName,
    this.firstName,
    this.lastName,
  });

  late String? userName;
  late String? firstName;
  late String? lastName;

  @override
  _Home3State createState() => _Home3State();
}

class _Home3State extends State<Home3> {
  bool check1 = false;
  bool check2 = false;
  bool check3 = false;
  bool check4 = false;
  bool isChecked = false;

  //true for checked checkbox, flase for unchecked one
  final bool enabled = false;

  String choice = '';

  @override
  Widget build(BuildContext context) {
    final VoidCallback? onPressed = enabled ? () {} : null;

    return Scaffold(
        body: SingleChildScrollView(
            child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 60,
        ),
        GestureDetector(
          onTap: () {
            Get.to(landingpage());
          },
          child: const Icon(
            Icons.close,
            size: 30,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
            alignment: Alignment.center,
            child: Image.asset(
              'Images/Thi.png',
            )),
        const SizedBox(
          height: 110,
        ),
        Positioned(
          child: Text(
            "Choose Your Academic Major",
            style: GoogleFonts.quicksand(
                fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          decoration: BoxDecoration(
              color: Colors.grey[200],
              border: Border.all(
                color: Color(0xFFA5D6A7),
              ),
              borderRadius: BorderRadius.all(Radius.circular(7))),
          child: CheckboxListTile(
            //checkbox positioned at right
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(5.0))),

            value: check1,
            onChanged: (bool? value) {
              setState(() {
                check1 = value!;
                check2 = false;
                check3 = false;
                check4 = false;
              });
            },
            title: Text("CYS"),
            activeColor: Colors.green[500],
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Container(
          decoration: BoxDecoration(
              color: Colors.grey[200],
              border: Border.all(
                color: Color(0xFFA5D6A7),
              ),
              borderRadius: BorderRadius.all(Radius.circular(7))),
          child: CheckboxListTile(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(5.0))),
            value: check2,
            onChanged: (bool? value) {
              setState(() {
                check1 = false;
                check2 = value!;
                check3 = false;
                check4 = false;
              });
            },
            title: Text("AI"),
            activeColor: Colors.green[500],
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Container(
          decoration: BoxDecoration(
              color: Colors.grey[200],
              border: Border.all(
                color: Color(0xFFA5D6A7),
              ),
              borderRadius: BorderRadius.all(Radius.circular(7))),
          child: CheckboxListTile(
            value: check3,
            onChanged: (bool? value) {
              setState(() {
                check1 = false;
                check2 = false;
                check3 = value!;
                check4 = false;
              });
            },
            title: Text("CIS"),
            activeColor: Colors.green[500],
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Container(
          decoration: BoxDecoration(
              color: Colors.grey[200],
              border: Border.all(
                color: Color(0xFFA5D6A7),
              ),
              borderRadius: BorderRadius.all(Radius.circular(7))),
          child: CheckboxListTile(
            value: check4,
            onChanged: (bool? value) {
              setState(() {
                check1 = false;
                check2 = false;
                check3 = false;
                check4 = value!;
              });
            },
            title: Text("CS"),
            activeColor: Colors.green[500],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          alignment: FractionalOffset.center,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  width: 135,
                  height: 35,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xFF199D8C),
                  ),
                  padding: const EdgeInsets.all(8),
                  // Change button text when light changes state.
                  child: const Text(
                    'Back',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                        fontSize: 17),
                  ),
                ),
              ),
              const SizedBox(
                width: 30,
              ),
              GestureDetector(
                onTap: () {
                  final student = UserInfos(
                      userName: widget.userName.toString(),
                      firstName: widget.firstName.toString(),
                      lastName: widget.lastName.toString(),
                      academicMajor: check1 == true
                          ? 'CYS'
                          : check2 == true
                              ? 'AI'
                              : check3 == true
                                  ? 'CIS'
                                  : check4 == true
                                      ? 'CS'
                                      : '');
                  registerStudents(student);
                  Get.to(Enterdigit());
                },
                child: Container(
                  width: 135,
                  height: 35,
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
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                        fontSize: 17),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    )));
  }

  Future<void> registerStudents(UserInfos user) async {
    final docUser = FirebaseFirestore.instance.collection('students').doc();
    user.id = docUser.id;
    final json = user.toJson();
    await docUser.set(json);
  }
}
