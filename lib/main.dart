import 'package:collegeconnect/screens/amdin_page.dart';
import 'package:collegeconnect/screens/coordinators_page.dart';
import 'package:collegeconnect/screens/landing_page.dart';
import 'package:collegeconnect/screens/navigation_pages.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async {
  // Initialize Firebase
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const CollegeConnect());
}

class CollegeConnect extends StatelessWidget {
  const CollegeConnect({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: FirebaseAuth.instance.currentUser != null
            ? FirebaseAuth.instance.currentUser!.email == 'admin@admin.sa'
                ? AdminPage()
                : FirebaseAuth.instance.currentUser!.email
                        .toString()
                        .contains('coordinator')
                    ? CoordinatorsPage()
                    : NavigationPage()
            : LandingPage(),
      ),
    );
  }
}
