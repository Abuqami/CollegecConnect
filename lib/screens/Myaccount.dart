import 'package:collegeconnect/screens/Edit_Profile.dart';
import 'package:collegeconnect/screens/My_chats.dart';
import 'package:collegeconnect/screens/Mymaterials.dart';
import 'package:collegeconnect/screens/Notifcations.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import 'Community.dart';
import 'ContactMentors.dart';
import 'Homepage.dart';
import 'Navigate Majors.dart';

class myacc extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final IsPixel6 = MediaQuery.of(context).size.height > 820;
    final isAndoridsmall = MediaQuery.of(context).size.height > 780;
    final isPixel3 = MediaQuery.of(context).size.height > 736;

    return Scaffold(
        backgroundColor: Color(0xFFF9DDAC),
        body: SafeArea(
          child: Column(children: [
            SizedBox(
              height: 40,
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                "My account",
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
            Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                ),
                child: isPixel3
                    ? UpperPart()
                    : isAndoridsmall
                        ? UpperPart()
                        : UpperPartsmall()),
            Expanded(
              flex: 6,
              child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: IsPixel6
                      ? RowUpBig()
                      : isPixel3
                          ? RowUp()
                          : isAndoridsmall
                              ? RowUp()
                              : RowUpSmall()),
            ),
            Row(
              children: [
                IsPixel6
                    ? BottomBig()
                    : isPixel3
                        ? Bottom()
                        : isAndoridsmall
                            ? Bottom()
                            : BottomSmall()
              ],
            ),
            Container(
              height: 50,
              decoration: BoxDecoration(color: Colors.white),
            ),
            IsPixel6 ? Bottom_Bar() : Bottom_BarSmall()
          ]),
        ));
  }
}

class RowUp extends StatelessWidget {
  const RowUp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 20,
        ),
        GestureDetector(
          onTap: () {
            Get.to(EditProfile());
          },
          child: Image.asset(
            'Images/Button5.png',
            width: 130,
            height: 130,
          ),
        ),
        SizedBox(
          width: 90,
        ),
        GestureDetector(
          onTap: () {
            Get.to(mymats());
          },
          child: Image.asset(
            'Images/Button6.png',
            width: 130,
            height: 130,
          ),
        ),
      ],
    );
  }
}

class RowUpSmall extends StatelessWidget {
  const RowUpSmall({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 20,
        ),
        GestureDetector(
          onTap: () {
            Get.to(EditProfile());
          },
          child: Image.asset(
            'Images/Button5.png',
            width: 130,
            height: 130,
          ),
        ),
        SizedBox(
          width: 110,
        ),
        GestureDetector(
          onTap: () {
            Get.to(mymats());
          },
          child: Image.asset(
            'Images/Button6.png',
            width: 130,
            height: 130,
          ),
        ),
      ],
    );
  }
}

class RowUpBig extends StatelessWidget {
  const RowUpBig({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 30,
        ),
        GestureDetector(
          onTap: () {
            Get.to(EditProfile());
          },
          child: Image.asset(
            'Images/Button5.png',
            width: 130,
            height: 120,
          ),
        ),
        SizedBox(
          width: 90,
        ),
        GestureDetector(
          onTap: () {
            Get.to(mymats());
          },
          child: Image.asset(
            'Images/Button6.png',
            width: 130,
            height: 120,
          ),
        ),
      ],
    );
  }
}

class Bottom extends StatelessWidget {
  const Bottom({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(children: [
        SizedBox(
          width: 20,
        ),
        GestureDetector(
          onTap: () {
            Get.to(Notfs());
          },
          child: Image.asset(
            'Images/Button7.png',
            width: 130,
            height: 130,
          ),
        ),
        SizedBox(
          width: 90,
        ),
        GestureDetector(
          onTap: () {
            Get.to(Mychats());
          },
          child: Image.asset(
            'Images/Button8.png',
            width: 130,
            height: 130,
          ),
        ),
      ]),
      width: 392,
      height: 150,
      color: Colors.white,
    );
  }
}

class BottomSmall extends StatelessWidget {
  const BottomSmall({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(children: [
        SizedBox(
          width: 20,
        ),
        GestureDetector(
          onTap: () {
            Get.to(Notfs());
          },
          child: Image.asset(
            'Images/Button7.png',
            width: 130,
            height: 130,
          ),
        ),
        SizedBox(
          width: 110,
        ),
        GestureDetector(
          onTap: () {
            Get.to(Mychats());
          },
          child: Image.asset(
            'Images/Button8.png',
            width: 130,
            height: 130,
          ),
        ),
      ]),
      width: 410,
      height: 150,
      color: Colors.white,
    );
  }
}

class BottomBig extends StatelessWidget {
  const BottomBig({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(children: [
        SizedBox(
          width: 30,
        ),
        GestureDetector(
          onTap: () {
            Get.to(Notfs());
          },
          child: Image.asset(
            'Images/Button7.png',
            width: 130,
            height: 130,
          ),
        ),
        SizedBox(
          width: 90,
        ),
        GestureDetector(
          onTap: () {
            Get.to(Mychats());
          },
          child: Image.asset(
            'Images/Button8.png',
            width: 135,
            height: 120,
          ),
        ),
      ]),
      width: 410,
      height: 150,
      color: Colors.white,
    );
  }
}

class UpperPart extends StatelessWidget {
  const UpperPart({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(children: [
        GestureDetector(
          onTap: () {},
          child: Image.asset(
            'Images/Bell.png',
            width: 30,
            height: 30,
          ),
        ),
        SizedBox(width: 320),
        GestureDetector(
          onTap: () {},
          child: Image.asset(
            'Images/Power.png',
            width: 30,
            height: 30,
          ),
        )
      ]),
      Image.asset(
        'Images/Profile.png',
        width: 60,
        height: 60,
      ),
      Text("Mohammed Ali"),
      Text("@Mohammed"),
    ]);
  }
}

class UpperPartsmall extends StatelessWidget {
  const UpperPartsmall({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(children: [
        SizedBox(
          width: 10,
        ),
        GestureDetector(
          onTap: () {},
          child: Image.asset(
            'Images/Bell.png',
            width: 30,
            height: 30,
          ),
        ),
        SizedBox(width: 330),
        GestureDetector(
          onTap: () {},
          child: Image.asset(
            'Images/Power.png',
            width: 30,
            height: 30,
          ),
        )
      ]),
      Image.asset(
        'Images/Profile.png',
        width: 60,
        height: 60,
      ),
      Text("Mohammed Ali"),
      Text("@Mohammed"),
    ]);
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
          onTap: () {
            Get.to(Homepage());
          },
          child: Container(
            width: 80,
            decoration:
                BoxDecoration(color: Color.fromARGB(255, 249, 221, 172)),
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
            width: 86,
            decoration: BoxDecoration(color: Color.fromARGB(255, 25, 157, 140)),
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
            decoration:
                BoxDecoration(color: Color.fromARGB(255, 249, 221, 172)),
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
            decoration: BoxDecoration(color: Color.fromARGB(255, 25, 157, 140)),
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
