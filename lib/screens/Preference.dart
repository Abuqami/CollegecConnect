import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Myaccount.dart';

class Preference extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePreference(),
    );
  }
}

class HomePreference extends StatefulWidget {
  @override
  _HomePreferenceState createState() => _HomePreferenceState();
}

class _HomePreferenceState extends State<HomePreference> {
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
                        child: Text("Preference",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 25)),
                      ),
                      Container(
                        alignment: Alignment.topLeft,
                        child: GestureDetector(
                          onTap: () {
                            Get.to(myacc());
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
                    Container(
                      alignment: Alignment.center,
                      child: Column(
                        children: <Widget>[
                          const SizedBox(
                            height: 80,
                          ),
                          Container(
                              width: 260,
                              height: 80,
                              decoration: const BoxDecoration(
                                color: const Color(0xFFF9DDAC),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30.0)),
                              ),
                              child: Row(
                                children: const <Widget>[
                                  Expanded(
                                      child: Center(
                                          child: Text("CIS Level-7",
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 16)))),
                                  Icon(
                                    Icons.arrow_forward_rounded,
                                    size: 50,
                                  ),
                                ],
                              )),
                          SizedBox(
                            height: 40,
                          ),
                          Container(
                              width: 260,
                              height: 80,
                              decoration: const BoxDecoration(
                                color: const Color(0xFFF9DDAC),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30.0)),
                              ),
                              child: Row(
                                children: const <Widget>[
                                  Expanded(
                                      child: Center(
                                          child: Text("CIS Level-9",
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 16)))),
                                  Icon(
                                    Icons.arrow_forward_rounded,
                                    size: 50,
                                  ),
                                ],
                              )),
                          SizedBox(
                            height: 40,
                          ),
                          Container(
                              width: 260,
                              height: 80,
                              decoration: const BoxDecoration(
                                color: const Color(0xFFF9DDAC),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30.0)),
                              ),
                              child: Row(
                                children: const <Widget>[
                                  Expanded(
                                      child: Center(
                                          child: Text("CS Level-10",
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 16)))),
                                  Icon(
                                    Icons.arrow_forward_rounded,
                                    size: 50,
                                  ),
                                ],
                              )),
                          SizedBox(
                            height: 40,
                          ),
                          Container(
                              width: 260,
                              height: 80,
                              decoration: const BoxDecoration(
                                color: const Color(0xFFF9DDAC),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30.0)),
                              ),
                              child: Row(
                                children: const <Widget>[
                                  Expanded(
                                      child: Center(
                                          child: Text("CYS Level-8",
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 16)))),
                                  Icon(
                                    Icons.arrow_forward_rounded,
                                    size: 50,
                                  ),
                                ],
                              )),
                        ],
                      ),
                    ),
                  ],
                )),
          ),
        ],
      )),
    );
  }
}
