import 'package:collegeconnect/screens/Community.dart';
import 'package:collegeconnect/screens/ContactMentors.dart';
import 'package:collegeconnect/screens/Myaccount.dart';
import 'package:collegeconnect/screens/Navigate%20Majors.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final IsPixel6 = MediaQuery.of(context).size.height > 820;
    final isAndoridsmall = MediaQuery.of(context).size.height > 780;
    final isPixel3 = MediaQuery.of(context).size.height > 736;
    return Scaffold(
      backgroundColor: Color(0xFFF9DDAC),
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(children: [
          Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  "Homepage",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
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
          Container(
            height: 40,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
              ),
            ),
            child: Pref_row(isPixel3: isPixel3, isAndoridsmall: isAndoridsmall),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: ListView.builder(
                  itemCount: 10, itemBuilder: ((context, index) => Post())),
            ),
          ),
          IsPixel6 ? Bottom_Bar() : Bottom_BarSmall()
        ]),
      ),
    );
  }
}

class Bottom_Bar extends StatelessWidget {
  const Bottom_Bar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: Row(children: [
        GestureDetector(
          onTap: () {},
          child: Container(
            width: 80,
            decoration: BoxDecoration(color: Color.fromARGB(255, 25, 157, 140)),
            child: Padding(
              padding: const EdgeInsets.all(13),
              child: Image.asset(
                'Images/House.png',
                height: 40,
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            Get.to(ContactMentors());
          },
          child: Container(
            width: 80,
            decoration:
                BoxDecoration(color: Color.fromARGB(255, 249, 221, 172)),
            child: Padding(
              padding: const EdgeInsets.all(7),
              child: Image.asset(
                'Images/people.png',
                height: 40,
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            Get.to(NavigateMajors());
          },
          child: Container(
            width: 80,
            decoration:
                BoxDecoration(color: Color.fromARGB(255, 249, 221, 172)),
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Image.asset(
                'Images/Books.png',
                height: 40,
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            Get.to(Community());
          },
          child: Container(
            width: 80,
            decoration:
                BoxDecoration(color: Color.fromARGB(255, 249, 221, 172)),
            child: Padding(
              padding: const EdgeInsets.all(11),
              child: Image.asset(
                'Images/Many_people.png',
                height: 40,
              ),
            ),
          ),
        ),
        SizedBox(
          width: 5,
        ),
        GestureDetector(
          onTap: () {
            Get.to(myacc());
          },
          child: Container(
            width: 80,
            decoration:
                BoxDecoration(color: Color.fromARGB(255, 249, 221, 172)),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Image.asset(
                'Images/guy.png',
                height: 40,
              ),
            ),
          ),
        ),
      ]),
    );
  }
}

class Bottom_BarSmall extends StatelessWidget {
  const Bottom_BarSmall({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: Row(children: [
        GestureDetector(
          onTap: () {},
          child: Container(
            width: 80,
            decoration: BoxDecoration(color: Color.fromARGB(255, 25, 157, 140)),
            child: Padding(
              padding: const EdgeInsets.all(13),
              child: Image.asset(
                'Images/House.png',
                height: 40,
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            Get.to(ContactMentors());
          },
          child: Container(
            width: 80,
            decoration:
                BoxDecoration(color: Color.fromARGB(255, 249, 221, 172)),
            child: Padding(
              padding: const EdgeInsets.all(7),
              child: Image.asset(
                'Images/people.png',
                height: 40,
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            Get.to(NavigateMajors());
          },
          child: Container(
            width: 80,
            decoration:
                BoxDecoration(color: Color.fromARGB(255, 249, 221, 172)),
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Image.asset(
                'Images/Books.png',
                height: 40,
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            Get.to(Community());
          },
          child: Container(
            width: 80,
            decoration:
                BoxDecoration(color: Color.fromARGB(255, 249, 221, 172)),
            child: Padding(
              padding: const EdgeInsets.all(11),
              child: Image.asset(
                'Images/Many_people.png',
                height: 40,
              ),
            ),
          ),
        ),
        SizedBox(
          width: 5,
        ),
        GestureDetector(
          onTap: () {
            Get.to(myacc());
          },
          child: Container(
            width: 71,
            decoration:
                BoxDecoration(color: Color.fromARGB(255, 249, 221, 172)),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Image.asset(
                'Images/guy.png',
                height: 40,
              ),
            ),
          ),
        ),
      ]),
    );
  }
}

class Pref_row extends StatelessWidget {
  const Pref_row({
    Key? key,
    required this.isPixel3,
    required this.isAndoridsmall,
  }) : super(key: key);

  final bool isPixel3;
  final bool isAndoridsmall;

  @override
  Widget build(BuildContext context) {
    final IsPixel6 = MediaQuery.of(context).size.height > 820;
    return Row(
      children: [
        IsPixel6
            ? SizedBox(
                width: 25,
              )
            : isPixel3
                ? SizedBox(
                    width: 10,
                  )
                : isAndoridsmall
                    ? SizedBox(width: 30)
                    : SizedBox(
                        width: 25,
                      ),
        GestureDetector(
          child: Image.asset(
            'Images/Select.png',
            width: 80,
            height: 110,
          ),
        ),
        SizedBox(
          width: 10,
        ),
        GestureDetector(
          child: Image.asset(
            'Images/Today.png',
            width: 60,
            height: 60,
          ),
        ),
        SizedBox(
          width: 10,
        ),
        GestureDetector(
          child: Image.asset(
            'Images/Yesterday.png',
            width: 80,
            height: 90,
          ),
        ),
        SizedBox(
          width: 10,
        ),
        GestureDetector(
          child: Image.asset(
            'Images/Weekago.png',
            width: 80,
            height: 120,
          ),
        ),
        SizedBox(
          width: 10,
        ),
        GestureDetector(
          child: Image.asset(
            'Images/Selection.png',
            width: 20,
            height: 20,
          ),
        ),
      ],
    );
  }
}

class Post extends StatelessWidget {
  const Post({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final IsPixel6 = MediaQuery.of(context).size.height > 820;
    final isAndoridsmall = MediaQuery.of(context).size.height > 780;
    return Row(
      children: [
        IsPixel6
            ? Container(
                width: 20,
              )
            : isAndoridsmall
                ? Container(
                    width: 15,
                  )
                : Container(
                    width: 14,
                  ),
        Container(
          margin: EdgeInsets.symmetric(vertical: 10),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: Color.fromARGB(255, 167, 163, 163))),
          child: Column(children: [
            Container(
              child: Row(children: [
                SizedBox(
                  width: 10,
                ),
                Image.asset(
                  'Images/Blackprofile.png',
                  width: 30,
                  height: 30,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "Mohammed  ",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text("@moham123"),
                SizedBox(
                  width: 100,
                ),
                Text(
                  "10M",
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
              ]),
            ),
            Container(
              child: Row(children: [
                SizedBox(
                  width: 30,
                ),
                Flexible(
                    child: Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elitLorem ipsum dolor sit amet, consectetur "))
              ]),
              width: 300,
              height: 50,
            ),
            Container(
              child: Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 50,
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Container(
                    child: Row(children: [
                      SizedBox(
                        width: 210,
                      ),
                      GestureDetector(
                          onTap: () {},
                          child: Icon(
                            Icons.favorite_outline_outlined,
                            size: 18,
                          )),
                      Text("12"),
                      GestureDetector(
                        onTap: () {
                          showDialog(
                              context: context,
                              builder: ((context) => AlertDialog(
                                    scrollable: true,
                                    title: Text(
                                      " 1 Comment",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(fontSize: 14),
                                    ),
                                    backgroundColor: Color(0xFFF9DDAC),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                    content: Stack(children: [
                                      Container(
                                        child: Row(children: [
                                          Image.asset(
                                            'Images/Blackprofile.png',
                                            width: 30,
                                            height: 30,
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            "@moham123",
                                            style: TextStyle(fontSize: 14),
                                          ),
                                        ]),
                                      ),
                                    ]),
                                    actions: [
                                      Container(
                                          child: Row(
                                        children: [
                                          Flexible(
                                            child: Text(
                                              "This is an example of a post",
                                              textAlign: TextAlign.center,
                                            ),
                                          )
                                        ],
                                      )),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        children: [Text("10M")],
                                      ),
                                      Row(
                                        children: [
                                          Container(
                                            decoration: BoxDecoration(
                                                color: Colors.black),
                                            width: 290,
                                            height: 1,
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          SizedBox(
                                            height: 30,
                                          )
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Image.asset(
                                            'Images/Blackprofile.png',
                                            width: 30,
                                            height: 30,
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            "@Saeed",
                                            style: TextStyle(fontSize: 14),
                                          )
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          SizedBox(
                                            height: 30,
                                          )
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Flexible(
                                              child: Text(
                                                  "This is a comment example"))
                                        ],
                                      ),
                                      Row(
                                        children: [Text("2H")],
                                      )
                                    ],
                                  )));
                        },
                        child: Image.asset(
                          'Images/Comment.png',
                          width: 15,
                          height: 15,
                        ),
                      ),
                      Text("1")
                    ]),
                  ),
                ],
              ),
            ),
          ]),
        ),
      ],
    );
  }
}
