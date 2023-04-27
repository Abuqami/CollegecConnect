import 'package:collegeconnect/screens/AboutMajor.dart';
import 'package:collegeconnect/screens/Course_materials.dart';
import 'package:collegeconnect/screens/Homepage.dart';
import 'package:flutter/material.dart';
import 'package:collegeconnect/utilities/constants.dart';
import 'package:get/get.dart';

import 'Community.dart';
import 'ContactMentors.dart';
import 'Myaccount.dart';

class NavigateMajors extends StatelessWidget {
  const NavigateMajors({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final IsPixel6 = MediaQuery.of(context).size.height > 820;
    return Scaffold(
        backgroundColor: Color(0xFFF9DDAC),
        body: SafeArea(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(
                  top: 90,
                  left: 60,
                  right: 60,
                  bottom: 50,
                ),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      Text("Navigate Majors", style: k_InterfacesTitleStyle),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 6,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(15),
                      topLeft: Radius.circular(15),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(45),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Major(
                              img: "Images/CIS.png",
                              MajorName: "CIS",
                            ),
                            Major(
                              img: "Images/AImajor.png",
                              MajorName: "AI",
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Major(img: "Images/CYSmajor.png", MajorName: "CYS"),
                            Major(
                              img: "Images/CSmajor.png",
                              MajorName: "CS",
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              IsPixel6 ? Bottom_Bar() : Bottom_BarSmall()
            ],
          ),
        ));
  }
}

class Major extends StatelessWidget {
  const Major({this.img, this.MajorName});

  final String? img;
  final String? MajorName;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(AboutMajor());
      },
      child: Container(
        width: 102,
        height: 96,
        decoration: BoxDecoration(
            color: Color(0xFFF9DDAC), borderRadius: BorderRadius.circular(22)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: AssetImage("$img"),
              width: 45,
              height: 45,
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              "$MajorName",
              style: TextStyle(fontSize: 20),
            )
          ],
        ),
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
            decoration: BoxDecoration(color: Color.fromARGB(255, 25, 157, 140)),
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
            decoration:
                BoxDecoration(color: Color.fromARGB(255, 249, 221, 140)),
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
            decoration: BoxDecoration(color: Color.fromARGB(255, 25, 157, 140)),
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
