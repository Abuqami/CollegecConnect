import 'package:collegeconnect/screens/login_page.dart';
import 'package:collegeconnect/screens/informations_first_page.dart';
import 'package:collegeconnect/utilities/constants.dart';
import 'package:collegeconnect/widgets/Buttons/landingPageButtons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, //!!
      body: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(horizontal: 32.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("College".toUpperCase(), style: kApplicationTitleStyle),
                Text("Connect.".toUpperCase(),
                    style: kApplicationTitleStyle.copyWith(fontSize: 12.0)),
              ],
            ),
            Image(
              image: AssetImage("Images/Logo.png"),
              height: 84,
              width: 84,
            ),
            SizedBox(
              height: 35,
            ),
            Column(
              children: [
                ContainerButton(
                  ktext: "Get Started",
                  colour: Color(0xFFF9DDAC),
                  tap: () {
                    Get.to(InformationsFirstPage());
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                ContainerButton(
                  colour: Color(0x29199D8C),
                  ktext: "Already have an account?",
                  tap: () {
                    Get.to(
                      LoginPage(),
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
