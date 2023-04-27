import 'package:collegeconnect/screens/MajorGroupLevel.dart';
import 'package:collegeconnect/screens/Navigate%20Majors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AboutMajor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeAboutMajor(),
    );
  }
}

class HomeAboutMajor extends StatefulWidget {
  @override
  _HomeAboutMajorState createState() => _HomeAboutMajorState();
}

class _HomeAboutMajorState extends State<HomeAboutMajor> {
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
                        alignment: Alignment.topLeft,
                        child: GestureDetector(
                          onTap: () {
                            Get.to(NavigateMajors());
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
                    height: 20,
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: Column(
                      children: <Widget>[
                        Text("About AI",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 25)),
                        GestureDetector(
                          onTap: () {},
                          child: const Icon(
                            Icons.computer,
                            size: 60,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text("Description",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 15)),
                  ),
                  Container(
                    width: 300,
                    height: 170,
                    decoration: const BoxDecoration(
                      color: const Color(0xFFF9DDAC),
                      borderRadius: BorderRadius.all(Radius.circular(30.0)),
                    ),
                    child: Column(
                      children: const [
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 10)),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: Text("Group Levels",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 25)),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Stack(
                      children: [
                        Container(
                          alignment: Alignment.centerLeft,
                          child: Column(
                            children: <Widget>[
                              const SizedBox(
                                width: 30,
                              ),
                              GestureDetector(
                                onTap: () {
                                  Get.to(MajorGroupLevel());
                                },
                                child: Container(
                                  width: 120,
                                  height: 75,
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
                                      Text("Group Level-7",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 16)),
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
                                  Get.to(MajorGroupLevel());
                                },
                                //alignment: Alignment.center,
                                child: Container(
                                  width: 120,
                                  height: 75,
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
                                      Text("Group Level-8",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 16)),
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
                        Container(
                          alignment: Alignment.centerRight,
                          child: Column(
                            children: <Widget>[
                              const SizedBox(
                                width: 30,
                              ),
                              GestureDetector(
                                onTap: () {
                                  Get.to(MajorGroupLevel());
                                },
                                child: Container(
                                  width: 120,
                                  height: 75,
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
                                      Text("Group Level-7",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 16)),
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
                                  Get.to(MajorGroupLevel());
                                },
                                //alignment: Alignment.center,
                                child: Container(
                                  width: 120,
                                  height: 75,
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
                                      Text("Group Level-10",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 16)),
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
                ],
              ),
            ),
          ),
        ],
      )),
    );
  }
}
