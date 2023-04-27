import 'package:collegeconnect/screens/Chat.dart';
import 'package:collegeconnect/screens/Myaccount.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter/services.dart';
import 'package:collegeconnect/utilities/constants.dart';

class Mychats extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final isAndoridsmall = MediaQuery.of(context).size.height > 780;

    return Scaffold(
      backgroundColor: Color(0xFFF9DDAC),
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(children: [
          Row(
            children: [
              GestureDetector(
                  onTap: () {
                    Get.to(myacc());
                  },
                  child: Icon(
                    Icons.arrow_back,
                    size: 30,
                  )),
            ],
          ),
          Column(
            children: [
              Align(
                alignment: Alignment.center,
                child: Text(
                  "My chats",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.only(
              top: 0,
              left: 0,
              right: 0,
              bottom: 0,
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                ),
              ),
              child: ListView.builder(
                  itemCount: 10, itemBuilder: ((context, index) => Group())),
            ),
          ),
        ]),
      ),
    );
  }
}

class Group extends StatelessWidget {
  const Group({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isAndoridsmall = MediaQuery.of(context).size.height > 780;

    final isPixel3 = MediaQuery.of(context).size.height > 736;
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            Get.to(Chat());
          },
          child: Container(
            height: 80,
            margin: EdgeInsets.symmetric(vertical: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(children: [
              Container(
                child: Row(children: [
                  SizedBox(
                    width: 10,
                  ),
                  Image.asset(
                    'Images/Blackprofile.png',
                    width: 40,
                    height: 40,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 300,
                    height: 100,
                    decoration: BoxDecoration(color: Colors.white),
                    child: Row(children: [
                      Column(
                        children: [
                          Container(
                              width: 100,
                              height: 50,
                              decoration: BoxDecoration(color: Colors.white),
                              child: Column(children: [
                                SizedBox(
                                  height: 23,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "CIS-level 8",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                              ])),
                          Container(
                            width: 100,
                            height: 30,
                            decoration: BoxDecoration(color: Colors.white),
                            child: Text(
                              " Guys I have a... ",
                              style:
                                  TextStyle(fontSize: 13, color: Colors.grey),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            width: 170,
                            height: 50,
                            decoration: BoxDecoration(color: Colors.white),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          SizedBox(
                            height: 25,
                          ),
                          Row(
                            children: [
                              Text("15M"),
                            ],
                          )
                        ],
                      )
                    ]),
                  ),
                ]),
              ),
            ]),
          ),
        ),
      ],
    );
  }
}
