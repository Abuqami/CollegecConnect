import 'package:collegeconnect/screens/chat_room_ai.dart';
import 'package:collegeconnect/screens/chat_room_cis.dart';
import 'package:collegeconnect/screens/chat_room_cs.dart';
import 'package:collegeconnect/screens/chat_room_cys.dart';
import 'package:flutter/material.dart';

import 'home_about_major.dart';

class NavigateMajors extends StatelessWidget {
  const NavigateMajors({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Container(
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(
              horizontal: 36.0,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Major(
                      img: "Images/CIS.png",
                      MajorName: "CIS Chat Room",
                      page: HomeAboutMajor(
                        title: 'CIS',
                        description: 'this is an example',
                        page: ChatRoomCIS(),
                      ),
                    ),
                    Major(
                      img: "Images/AImajor.png",
                      MajorName: "AI Chat Room",
                      page: HomeAboutMajor(
                        title: 'AI',
                        description: 'this is an example',
                        page: ChatRoomAI(),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 16.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Major(
                      img: "Images/CYSmajor.png",
                      MajorName: "CYS Chat Room",
                      page: HomeAboutMajor(
                        title: 'CYS',
                        description: 'this is an example',
                        page: ChatRoomCYS(),
                      ),
                    ),
                    Major(
                      img: "Images/CSmajor.png",
                      MajorName: "CS Chat Room",
                      page: HomeAboutMajor(
                        title: 'CS',
                        description: 'this is an example',
                        page: ChatRoomCS(),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ));
  }
}

class Major extends StatelessWidget {
  const Major(
      {super.key,
      required this.img,
      required this.MajorName,
      required this.page});

  final String img;
  final String MajorName;
  final Widget page;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => page),
        );
      },
      child: Container(
        padding: EdgeInsets.symmetric(
          vertical: 16.0,
          horizontal: 24.0,
        ),
        decoration: BoxDecoration(
          color: Color(0x29F9DDAC),
          borderRadius: BorderRadius.circular(
            8.0,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: AssetImage(img),
              width: 40.0,
              height: 40.0,
            ),
            SizedBox(
              height: 12.0,
            ),
            Text(
              MajorName,
              style: TextStyle(fontSize: 12.0),
            )
          ],
        ),
      ),
    );
  }
}
