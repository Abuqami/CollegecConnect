import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collegeconnect/screens/edit_profile_page.dart';
import 'package:collegeconnect/screens/Mymaterials.dart';
import 'package:collegeconnect/screens/landing_page.dart';
import 'package:collegeconnect/students_model.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyAccount extends StatelessWidget {
  const MyAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.black87),
        actions: [
          IconButton(
            onPressed: () {
              FirebaseAuth.instance.signOut();
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => LandingPage(),
                ),
              );
            },
            icon: Icon(
              Icons.logout_rounded,
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(
            top: 42.0,
          ),
          child: Column(
            children: [
              Container(
                height: 250,
                child: StreamBuilder<List<StudentsModel>>(
                  stream: createProfile(),
                  builder: (context, snapshot) {
                    if (snapshot.hasError) {
                      return Text('Something went wrong! ${snapshot.error}');
                    } else if (snapshot.hasData) {
                      final profile = snapshot.data!;
                      return ListView(
                        children: profile.map(buildProfile).toList(),
                      );
                    } else {
                      return Center(
                        child: CircularProgressIndicator(),
                      );
                    }
                  },
                ),
              ),
              SizedBox(
                height: 50.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.to(
                        EditProfile(),
                      );
                    },
                    child: Container(
                      width: 120.0,
                      height: 120.0,
                      padding: EdgeInsets.all(
                        24.0,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          8.0,
                        ),
                        color: Colors.grey.withOpacity(
                          .1,
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(
                            Icons.account_circle_rounded,
                          ),
                          SizedBox(
                            height: 8.0,
                          ),
                          Text(
                            'Edit Profile',
                            style: TextStyle(
                              fontSize: 12.0,
                              fontWeight: FontWeight.w400,
                              color: Colors.black87,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.to(
                        MyMaterials(),
                      );
                    },
                    child: Container(
                      width: 120.0,
                      height: 120.0,
                      padding: EdgeInsets.all(
                        24.0,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          8.0,
                        ),
                        color: Colors.grey.withOpacity(
                          .1,
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(
                            Icons.drive_file_move_sharp,
                          ),
                          SizedBox(
                            height: 8.0,
                          ),
                          Text(
                            'My Materials',
                            style: TextStyle(
                              fontSize: 12.0,
                              fontWeight: FontWeight.w400,
                              color: Colors.black87,
                            ),
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
    );
  }
}

Stream<List<StudentsModel>> createProfile() => FirebaseFirestore.instance
    .collection('students')
    .where('user_ID', isEqualTo: FirebaseAuth.instance.currentUser!.uid)
    .snapshots()
    .map((snapshot) => snapshot.docs
        .map((doc) => StudentsModel.fromJson(doc.data()))
        .toList());

Widget buildProfile(StudentsModel student) {
  return Container(
    child: Column(
      children: [
        CircleAvatar(
          backgroundImage: NetworkImage(student.imageLink),
          radius: 50.0,
        ),
        SizedBox(
          height: 6.0,
        ),
        Text(
          '${student.firstName}' + ' ' + '${student.lastName}',
          style: TextStyle(
            fontSize: 12.0,
            color: Colors.black87,
          ),
        ),
        Text(
          "@${student.userName}",
          style: TextStyle(
            fontSize: 10.0,
            color: Colors.blue,
          ),
        ),
      ],
    ),
  );
}
