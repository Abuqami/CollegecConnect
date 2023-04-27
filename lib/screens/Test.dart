import 'package:collegeconnect/screens/Chat.dart';
import 'package:collegeconnect/screens/Edit_Profile.dart';
import 'package:collegeconnect/screens/Educational_Resources.dart';
import 'package:collegeconnect/screens/admin_dashboard.dart';
import 'package:collegeconnect/screens/landing_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Test extends StatelessWidget {
  const Test({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Column(

            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(

                    children: [
                      GestureDetector(
                        onTap: () {
                          Get.to(landingpage());
                        },
                        child: Container(
                          width: 50,
                          height: 75,
                          decoration: BoxDecoration(
                              color: Color(0xFFF9DDAC),
                              borderRadius: BorderRadius.circular(22)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text("Landing Page and the rest",
                                style: TextStyle(
                                  fontSize: 15
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 45,
                      ),
                      GestureDetector(
                        onTap: (){
                          Get.to(AdminDashboard());
                        },
                        child: Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              color: Color(0xFFF9DDAC),
                              borderRadius: BorderRadius.circular(22)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text("Admin Dashboard",
                                style: TextStyle(
                                  fontSize: 15
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 45,),
                      GestureDetector(
                        onTap: (){
                          Get.to(Educational_Resources());
                        },
                        child: Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              color: Color(0xFFF9DDAC),
                              borderRadius: BorderRadius.circular(22)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text("Educational Resources",
                                style: TextStyle(
                                    fontSize: 15
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 45,),
                      GestureDetector(
                        onTap: (){
                          Get.to(Chat());
                        },
                        child: Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              color: Color(0xFFF9DDAC),
                              borderRadius: BorderRadius.circular(22)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text("Chat",
                                style: TextStyle(
                                    fontSize: 15
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 45,),
                      GestureDetector(
                        onTap: (){
                          Get.to(EditProfile());
                        },
                        child: Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              color: Color(0xFFF9DDAC),
                              borderRadius: BorderRadius.circular(22)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text("Edit Profile",
                                style: TextStyle(
                                    fontSize: 15
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: (){
                        },
                        child: Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              color: Color(0xFFF9DDAC),
                              borderRadius: BorderRadius.circular(22)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text("Edit Profile",
                                style: TextStyle(
                                    fontSize: 15
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



            ],
          ),
        ),
      ),
    );
  }
}
