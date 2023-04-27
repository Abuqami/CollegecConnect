import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'admin_dashboard.dart';
import 'package:collegeconnect/utilities/constants.dart';
import 'package:collegeconnect/widgets/Curved_background.dart';
import 'package:collegeconnect/widgets/Buttons/backbutton.dart';

class UserIssues extends StatelessWidget {
  const UserIssues({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF9DDAC),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: backbutton(),
            ),

            curved_background(title: 'User Issues'),
            Expanded(
              flex: 6,
              child: Container(
                decoration: curved_backgroundDecoration,
                child: Column(
                  children: [
                    SizedBox(
                      height: 25,
                    ),
                    Expanded(
                      //to not having a limit within screen
                      child: Center(
                        child: SingleChildScrollView(
                          //responsible for making widgets scrollable
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              UserIssue_information(),
                              UserIssue_information(),
                              UserIssue_information(),
                              UserIssue_information(),
                              UserIssue_information(),
                              UserIssue_information(),
                              UserIssue_information(),
                              UserIssue_information(),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class UserIssue_information extends StatelessWidget {
  const UserIssue_information({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 282,
      height: 115,
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Color(0xFFF9DDAC),
        borderRadius: BorderRadius.circular(22),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            GestureDetector(
              onTap: (){
                Get.defaultDialog(
                    title: "are you sure about deleting this issue?",
                    onCancel: (){
                      //cancel the process?
                    },
                    onConfirm: (){
                      //when it comes do deleting widgets, we will use this block of area for conforming the deletion process
                    },
                    cancelTextColor: Colors.red,
                    confirmTextColor: Colors.black,
                    titleStyle: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black
                    ),
                    buttonColor: Colors.white,
                    middleText: 'i have an issue regardingrifmrunfrnfrufrfkmrfrmfmrrnmfuirmnfirmfrfrfnrfunur'
                );
              },
              child: Align(
                alignment: Alignment.topRight,
                child: Icon(Icons.minimize),
              ),
            ),
            Flexible(
              child: Align(
                alignment: Alignment.centerLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  textBaseline: TextBaseline.alphabetic,
                  children: const [
                    Flexible(
                      child: Text(
                        "2180000434@iau.edu.sa ",
                        overflow: TextOverflow.ellipsis,
                        maxLines: 5,
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                    Text("21/02/1999"),
                    Flexible(
                      child: Text(
                        'Hey, I have an issue regarding this thing which turns the ', // the text will not be shown as a whole within the container so admin need to press the right forward button to read the full text
                        style: TextStyle(fontSize: 15),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: GestureDetector(onTap: (){
                Get.defaultDialog(title: '...اهلا وسهلاً استاذ',content: Text("هنا من المفترض تنعرض باقي شكوى المستخدم "),);
              },child: Icon(Icons.arrow_forward)),
            ),
          ],
        ),
      ),
    );
  }
}
