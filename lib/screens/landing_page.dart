import 'package:collegeconnect/screens/Login.dart';
import 'package:collegeconnect/screens/MyApp1.dart';
import 'package:flutter/material.dart';
import 'package:collegeconnect/utilities/constants.dart';
import 'package:collegeconnect/widgets/Buttons/landingPageButtons.dart';
import 'package:get/get.dart';

//import 'package:sizer/sizer.dart';
class landingpage extends StatelessWidget {
  const landingpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, //!!
      body: Padding(
        padding: const EdgeInsets.all(2.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                child: Column(
                  children: const [
                    Text("College", style: k_Application_Title_Style),
                    Text("Connect", style: k_Application_Title_Style),
                  ],
                ),
              ),
              Image(
                image: AssetImage("Images/Logo.png"),
                height: 142,
                width: 142,
              ),
              SizedBox(
                height: 35,
              ),
              Container(
                child: Column(
                  children: [
                    cont(
                      ktext: "Get Started",
                      colour: Color(0xFFF9DDAC),
                      tap: () {
                        Get.to(MyApp1());
                      },
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    cont(
                      colour: Color(0xFF199D8C),
                      ktext: "Already have an account?",
                      tap: () {
                        Get.to(Login());
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
