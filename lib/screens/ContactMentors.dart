import 'package:collegeconnect/screens/Homepage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Community.dart';
import 'Myaccount.dart';
import 'Navigate Majors.dart';

Color mainClr = const Color(0xFFF8DCAC), green = const Color(0xFF189D8C);

class ContactMentors extends StatelessWidget {
  const ContactMentors({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final IsPixel6 = MediaQuery.of(context).size.height > 820;
    return Scaffold(
      backgroundColor: mainClr,
      body: Container(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(bottom: 20),
              height: 120.0,
              alignment: Alignment.bottomCenter,
              child: const Text(
                'Contact with Mentors!',
                style: TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(25),

                // height: double.infinity,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(30.0),
                  ),
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'Search for Mentor',
                        filled: true,
                        fillColor: Colors.grey,
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            width: 2.0,
                            color: mainClr,
                          ),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(20.0),
                          ),
                        ),
                        enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.all(
                            Radius.circular(20.0),
                          ),
                        ),
                        hintStyle: const TextStyle(
                          fontSize: 13.0,
                        ),
                        prefixIcon: const Icon(
                          Icons.search,
                        ),
                        contentPadding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                      ),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Container(
                      padding: const EdgeInsets.fromLTRB(4, 0, 8, 4),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0),
                        color: mainClr,
                      ),
                      child: Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Align(
                                    alignment: Alignment.bottomLeft,
                                    child: Container(
                                      height: 40,
                                      width: 45,
                                      decoration: BoxDecoration(
                                        borderRadius: const BorderRadius.only(
                                          topRight: Radius.circular(25.0),
                                          topLeft: Radius.circular(5.0),
                                          bottomRight: Radius.circular(5.0),
                                          bottomLeft: Radius.circular(25.0),
                                        ),
                                        color: green,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Expanded(
                                child: Container(
                                  padding:
                                      const EdgeInsets.fromLTRB(4, 20, 0, 4),
                                  child: Column(
                                    children: const [
                                      Text(
                                        'Join As Mentor',
                                        style: TextStyle(
                                          fontSize: 19.0,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        'Be a role model for other students by helping them with their academic questions',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: 12.0,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              ConstrainedBox(
                                constraints: const BoxConstraints(
                                  // maxHeight: 190.0,
                                  maxHeight: 90.0,
                                  minHeight: 80.0,
                                ),
                                // color: green,
                                // alignment: Alignment.centerRight,
                                child: const Center(
                                  child: Icon(
                                    Icons.arrow_forward,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Container(
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0),
                        color: mainClr,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 45,
                                width: 45,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: mainClr,
                                  border: Border.all(
                                    width: 3.0,
                                    color: green,
                                  ),
                                ),
                                child: const Icon(
                                  Icons.person_outline,
                                  size: 40,
                                ),
                              ),
                              const SizedBox(width: 10.0),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    'Abdurrahmen Albaqami',
                                  ),
                                  Text(
                                    '@Albaqami',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w100,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(height: 5.0),
                          Row(
                            children: [
                              Icon(
                                Icons.shopping_bag_outlined,
                                size: 20.0,
                              ),
                              const SizedBox(
                                width: 7,
                              ),
                              const Text('ARTIFICIAL INTELLIGENECE'),
                            ],
                          ),
                          const SizedBox(height: 5.0),
                          Row(
                            children: [
                              Icon(
                                Icons.grading,
                                size: 20.0,
                              ),
                              const SizedBox(
                                width: 7,
                              ),
                              const Text('Level-8'),
                            ],
                          ),
                          const SizedBox(height: 5.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                height: 25,
                                width: 100.0,
                                padding: const EdgeInsets.fromLTRB(0, 4, 0, 4),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15.0),
                                  color: Colors.white,
                                ),
                                child: Icon(
                                  Icons.whatsapp,
                                  size: 20.0,
                                ),
                              ),
                              Container(
                                  height: 25,
                                  width: 100.0,
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 4, 0, 4),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15.0),
                                    color: Colors.white,
                                  ),
                                  child: Image.asset(
                                    'Images/twitter.png',
                                  )),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Container(
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0),
                        color: mainClr,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 45,
                                width: 45,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: mainClr,
                                  border: Border.all(
                                    width: 3.0,
                                    color: green,
                                  ),
                                ),
                                child: const Icon(
                                  Icons.person_outline,
                                  size: 40,
                                ),
                              ),
                              const SizedBox(width: 10.0),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text('Abdurrahmen Albaqami'),
                                  Text(
                                    '@Albaqami',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w100,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(height: 5.0),
                          Row(
                            children: [
                              Icon(
                                Icons.shopping_bag_outlined,
                                size: 20.0,
                              ),
                              const SizedBox(
                                width: 7,
                              ),
                              const Text('ARTIFICIAL INTELLIGENECE'),
                            ],
                          ),
                          const SizedBox(height: 5.0),
                          Row(
                            children: [
                              Icon(
                                Icons.grading,
                                size: 20.0,
                              ),
                              const SizedBox(
                                width: 7,
                              ),
                              const Text('Level-8'),
                            ],
                          ),
                          const SizedBox(height: 5.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                height: 25,
                                width: 100.0,
                                padding: const EdgeInsets.fromLTRB(0, 4, 0, 4),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15.0),
                                  color: Colors.white,
                                ),
                                child: Icon(
                                  Icons.whatsapp,
                                  size: 20.0,
                                ),
                              ),
                              Container(
                                  height: 25,
                                  width: 100.0,
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 4, 0, 4),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15.0),
                                    color: Colors.white,
                                  ),
                                  child: Image.asset(
                                    'Images/twitter.png',
                                  ))
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            IsPixel6 ? Bottom_Bar() : Bottom_BarSmall()
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
            decoration: BoxDecoration(color: Color.fromARGB(255, 25, 157, 140)),
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
            decoration: BoxDecoration(color: Color.fromARGB(255, 25, 157, 140)),
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
