import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter/services.dart';
import 'package:collegeconnect/utilities/constants.dart';

class Aimat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final isAndoridsmall = MediaQuery.of(context).size.height > 780;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xFFF9DDAC),
      body: SafeArea(
        child: Column(children: [
          SizedBox(
            height: 10,
          ),
          Align(
            alignment: Alignment.center,
            child: Text(
              "Courses",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Text(
              "Materials",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            padding: EdgeInsets.only(
              top: 0,
              left: 60,
              right: 60,
              bottom: 50,
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
                  itemBuilder: ((context, index) => Materials())),
            ),
          ),
        ]),
      ),
    );
  }
}

class Materials extends StatelessWidget {
  const Materials({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isAndoridsmall = MediaQuery.of(context).size.height > 780;

    final isPixel3 = MediaQuery.of(context).size.height > 736;
    return Row(
      children: [
        isPixel3
            ? SizedBox(
                width: 43,
              )
            : SizedBox(
                width: 50,
              ),
        Container(
          height: 95,
          margin: EdgeInsets.symmetric(vertical: 10),
          decoration: BoxDecoration(
              color: Color.fromARGB(217, 217, 217, 217),
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: Color.fromARGB(255, 167, 163, 163))),
          child: Column(children: [
            Container(
              child: Row(children: [
                SizedBox(
                  height: 15,
                ),
                Text(
                  "Programming in AI",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ]),
            ),
            Container(
              child: Row(children: [
                Image.asset(
                  'Images/Ai.png',
                  width: 60,
                  height: 100,
                ),
                Flexible(
                    child: Text(
                        "Lorem ipsum dolor sit amet, consectetuer adipiscing elit.")),
                SizedBox(
                  width: 10,
                ),
                GestureDetector(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: ((context) => AlertDialog(
                            insetPadding: EdgeInsets.zero,
                            backgroundColor: Color.fromARGB(240, 239, 238, 238),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            scrollable: true,
                            content: Container(
                              child: Column(children: [
                                Row(
                                  children: [
                                    SizedBox(
                                      width: 321,
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.pop(context);
                                      },
                                      child: Image.asset(
                                        'Images/Delete.png',
                                        width: 20,
                                        height: 20,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  " Programming in AI related content",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Stack(
                                  children: [
                                    Container(
                                      width: 310,
                                      height: 50,
                                      decoration: BoxDecoration(
                                          color: Color.fromARGB(
                                              217, 217, 217, 217),
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      child: TextField(
                                        onChanged: (value) {},
                                        decoration: InputDecoration(
                                            border: InputBorder.none,
                                            hintText: "Type something..."),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                    Positioned(
                                      height: 40,
                                      child: Image.asset(
                                        'Images/Glass.png',
                                        width: 20,
                                        height: 20,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      child: Row(children: [
                                        Column(
                                          children: [
                                            SizedBox(
                                              height: 10,
                                            ),
                                          ],
                                        ),
                                      ]),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: SingleChildScrollView(
                                        child: Column(
                                          children: [
                                            Material(),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Material(),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Material(),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Material(),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Material(),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Material()
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                              ]),
                            ))));
                  },
                  child: Image.asset(
                    'Images/Arrow_right.png',
                    width: 20,
                    height: 20,
                  ),
                ),
                SizedBox(
                  width: 30,
                )
              ]),
              width: 300,
              height: 50,
            ),
          ]),
        ),
      ],
    );
  }
}

class Material extends StatelessWidget {
  const Material({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 249, 221, 172),
        borderRadius: BorderRadius.circular(20),
      ),
      height: 90,
      width: 340,
      child: Row(
        children: [
          SizedBox(
            width: 10,
          ),
          Image.asset(
            'Images/Youtube.png',
            width: 50,
            height: 50,
          ),
          Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Stack(children: [
                Text(
                  "Aliquam tincidunt mauris eu risus.",
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Text(
                    "Mohammed Alaqeel",
                    style: TextStyle(
                      fontSize: 13,
                    ),
                  ),
                ),
              ])
            ],
          ),
        ],
      ),
    );
  }
}
