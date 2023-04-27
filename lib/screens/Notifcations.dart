import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter/services.dart';
import 'package:collegeconnect/utilities/constants.dart';

import 'Myaccount.dart';

class Notfs extends StatelessWidget {
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
                  "Notifications",
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
                  itemCount: 10,
                  itemBuilder: ((context, index) => Notification())),
            ),
          ),
        ]),
      ),
    );
  }
}

class Notification extends StatelessWidget {
  const Notification({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isAndoridsmall = MediaQuery.of(context).size.height > 780;
    return Row(
      children: [
        SizedBox(
          width: 18,
        ),
        Container(
          height: 92,
          decoration: BoxDecoration(
              border: Border(
            bottom: BorderSide(width: 1.5, color: Colors.black),
          )),
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
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Row(children: [
                    Column(children: [
                      Container(
                          width: 140,
                          height: 50,
                          decoration: BoxDecoration(color: Colors.white),
                          child: Column(children: [
                            SizedBox(
                              height: 23,
                            ),
                            Row(
                              children: [
                                Text(
                                  "Activties Coordinator",
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
                      Row(
                        children: [
                          Container(
                            width: 140,
                            height: 40,
                            decoration: BoxDecoration(color: Colors.white),
                            child: Text(
                              "Added new post",
                              style: TextStyle(
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ],
                      )
                    ]),
                    Column(
                      children: [
                        Container(
                          width: 120,
                          decoration: BoxDecoration(color: Colors.green),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        SizedBox(
                          height: 40,
                        ),
                        Text("10M"),
                      ],
                    ),
                  ]),
                ),
              ]),
            ),
          ]),
        ),
      ],
    );
  }
}
