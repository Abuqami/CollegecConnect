import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../screens/community_page.dart';
import '../screens/contact_mentors.dart';
import '../screens/my_account.dart';
import '../screens/navigate_majors.dart';

class BottomBarSmall extends StatelessWidget {
  const BottomBarSmall({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: Row(children: [
        GestureDetector(
          onTap: () {},
          child: Container(
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
            Get.to(CommunityPage());
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
            Get.to(MyAccount());
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
