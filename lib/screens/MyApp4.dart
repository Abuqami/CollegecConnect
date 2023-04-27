import 'package:collegeconnect/screens/Community.dart';
import 'package:collegeconnect/screens/Edit_Profile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:flutter/src/widgets/container.dart';

class MyApp4 extends StatelessWidget {
  const MyApp4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home4(),
    );
  }
}

class Home4 extends StatefulWidget {
  @override
  _Home4State createState() => _Home4State();
}

class _Home4State extends State<Home4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF9DDAC),
      body: SingleChildScrollView(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(
              top: 160,
              left: 60,
              right: 60,
              bottom: 20,
            ),
          ),
          Container(
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                )),
            child: Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(10),
                  child: Stack(
                    children: [
                      Container(
                        alignment: Alignment.topLeft,
                        child: GestureDetector(
                          onTap: () {},
                          child: const Icon(
                            Icons.notifications,
                            size: 30,
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        child: GestureDetector(
                          onTap: () {},
                          child: const Icon(
                            Icons.person_rounded,
                            size: 60,
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.topRight,
                        child: GestureDetector(
                          onTap: () {},
                          child: const Icon(
                            Icons.power_settings_new_sharp,
                            size: 30,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  child: Column(
                    children: const <Widget>[
                      Text("Ali Mohammed",
                          style: TextStyle(color: Colors.black, fontSize: 14)),
                      Text("@AliMoh",
                          style: TextStyle(color: Colors.black, fontSize: 12)),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 130,
                ),
                Container(
                  alignment: Alignment.center,
                  child: Column(
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          Get.to(Community());
                        },
                        child: Container(
                          width: 220,
                          height: 115,
                          decoration: const BoxDecoration(
                            color: const Color(0xFFF9DDAC),
                            borderRadius:
                                BorderRadius.all(Radius.circular(30.0)),
                          ),
                          child: Column(
                            children: const [
                              SizedBox(
                                height: 20,
                              ),
                              Icon(
                                Icons.video_collection,
                                size: 50,
                              ),
                              Text("View Posts",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 16)),
                              SizedBox(
                                height: 15,
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.to(EditProfile());
                        },
                        //alignment: Alignment.center,
                        child: Container(
                          width: 220,
                          height: 115,
                          decoration: const BoxDecoration(
                            color: const Color(0xFFF9DDAC),
                            borderRadius:
                                BorderRadius.all(Radius.circular(30.0)),
                          ),
                          child: Column(
                            children: const [
                              SizedBox(
                                height: 20,
                              ),
                              Icon(
                                Icons.person_outline,
                                size: 50,
                              ),
                              Text("Edit Profile",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 16)),
                              SizedBox(
                                height: 15,
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      )),
    );
  }
}
