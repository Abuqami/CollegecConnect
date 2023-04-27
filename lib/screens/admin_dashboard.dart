import 'package:collegeconnect/screens/ManageCoordinators.dart';
import 'package:collegeconnect/screens/User_Issues.dart';
import 'package:collegeconnect/utilities/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:collegeconnect/widgets/Curved_background.dart';

class AdminDashboard extends StatelessWidget {
  const AdminDashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF9DDAC),
      body: Column(
        children: [
          curved_background(title: 'Admin Dashboard'),
          Expanded(
            flex: 6,
            child: Container(
              decoration: curved_backgroundDecoration,
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Get.snackbar("", "",
                            snackPosition: SnackPosition.BOTTOM,
                            titleText: Text(
                              "Sign out",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            messageText: Text("😔 وين رايح التفت سلم علينا"),
                            margin: EdgeInsets.all(10));
                      },
                      child: Align(
                        alignment: Alignment.topRight,
                        child: FaIcon(
                          FontAwesomeIcons.powerOff,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 80,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          FaIcon(
                            FontAwesomeIcons.user,
                            size: 35,
                          ),
                          Text(
                            "Mohammed Albaqami",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text("@Mohammed"),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 400,
                      width: 500,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Get.to(ManageCoordinator());
                            },
                            child: Container(
                              width: 169,
                              height: 93,
                              decoration: BoxDecoration(
                                  color: Color(0xFFF9DDAC),
                                  borderRadius: BorderRadius.circular(22)),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  FaIcon(
                                    FontAwesomeIcons.users,
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text("Activities Coordinators"),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 45,
                          ),
                          GestureDetector(
                            onTap: (){
                              Get.to(() => UserIssues());
                            },
                            child: Container(
                              width: 169,
                              height: 93,
                              decoration: BoxDecoration(
                                  color: Color(0xFFF9DDAC),
                                  borderRadius: BorderRadius.circular(22)),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  FaIcon(FontAwesomeIcons.question),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text("User Issues"),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}


