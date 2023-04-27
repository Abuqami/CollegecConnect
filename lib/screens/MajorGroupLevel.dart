import 'package:collegeconnect/screens/AboutMajor.dart';
import 'package:collegeconnect/screens/Chat.dart';
import 'package:collegeconnect/screens/Course_materials.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class MajorGroupLevel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeMajorGroupLevel(),
    );
  }
}

class HomeMajorGroupLevel extends StatefulWidget {
  @override
  _HomeMajorGroupLevelState createState() => _HomeMajorGroupLevelState();
}

class _HomeMajorGroupLevelState extends State<HomeMajorGroupLevel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF9DDAC),
      body: Container(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(
              top: 80,
              left: 60,
              right: 60,
              bottom: 20,
            ),
          ),
          Container(
            child: Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(10),
                  child: Stack(
                    children: [
                      Container(
                        alignment: Alignment.topRight,
                        child: GestureDetector(
                          onTap: () {},
                          child: const Icon(
                            Icons.menu,
                            size: 30,
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        child: Text("AI-Group Level 7",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 25)),
                      ),
                      Container(
                        alignment: Alignment.topLeft,
                        child: GestureDetector(
                          onTap: () {
                            Get.to(AboutMajor());
                          },
                          child: const Icon(
                            Icons.arrow_back,
                            size: 30,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  )),
              child: Column(
                children: <Widget>[
                  const SizedBox(
                    height: 130,
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: Column(
                      children: <Widget>[
                        GestureDetector(
                          onTap: () {
                            Get.to(Chat());
                          },
                          child: Container(
                            width: 140,
                            height: 140,
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
                                  Icons.mark_unread_chat_alt_sharp,
                                  size: 50,
                                ),
                                Text("Group Chat",
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
                          height: 60,
                        ),
                        GestureDetector(
                          onTap: () {
                            Get.to(Aimat());
                          },
                          //alignment: Alignment.center,
                          child: Container(
                            width: 140,
                            height: 140,
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
                                  Icons.menu_book,
                                  size: 50,
                                ),
                                Text("Course Materials",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 16)),
                                SizedBox(
                                  height: 15,
                                ),
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
        ],
      )),
    );
  }
}
