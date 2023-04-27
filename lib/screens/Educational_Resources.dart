import 'package:collegeconnect/utilities/constants.dart';
import 'package:collegeconnect/widgets/Buttons/DeleteUpdateButtons.dart';
import 'package:collegeconnect/widgets/Buttons/backbutton.dart';
import 'package:collegeconnect/widgets/Buttons/dialogSubmitButton.dart';
import 'package:collegeconnect/widgets/CollegeConnect_TextFormField.dart';
import 'package:collegeconnect/widgets/Curved_background.dart';
import 'package:dropdown_button2/custom_dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

/*
 List<Widget> Iconss = <Widget>[
  Icon(FontAwesomeIcons.youtube),
  Icon(FontAwesomeIcons.soundcloud),
].obs;*/
List<String> Levels = [
  'Level 3',
  'Level 4',
  'Level 5',
  'Level 6',
  'Level 7',
  'Level 8',
  'Level 9',
  'Level 10',
  'Level 11',
  'Level 12',
  'Level 13',
  'Level 14',
  'Level 15'
];
List<String> courses = ['Intro to C++', 'Discrete Math', 'Programming in java'];
String? LevelselectedValue;
String? courseSelectedValue;

class Educational_Resources extends StatefulWidget {
  const Educational_Resources({Key? key}) : super(key: key);

  @override
  State<Educational_Resources> createState() => _Educational_ResourcesState();
}

class _Educational_ResourcesState extends State<Educational_Resources> {
  //List<bool> selectedResourceType = <bool>[false, true];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xFFF9DDAC),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xFF199D8C),
        onPressed: () {
          Get.defaultDialog(
            title: "Add Educational Resource Information",
            titlePadding: EdgeInsets.all(25),
            content: Flexible(
              child: Form(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      CollegeConnect_TextFormField(
                        label: 'Title',
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      CollegeConnect_TextFormField(
                        label: 'Description',
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      CollegeConnect_TextFormField(
                        label: 'Youtube',
                        formIcon: Icon(
                          FontAwesomeIcons.youtube,
                          color: Colors.red,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      CollegeConnect_TextFormField(
                        label: 'SoundCloud Link',
                        formIcon: Icon(
                          FontAwesomeIcons.soundcloud,
                          color: Colors.orange,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      CollegeConnect_TextFormField(
                        label: 'Spotify Link',
                        formIcon: Icon(
                          FontAwesomeIcons.spotify,
                          color: Colors.green,
                        ),
                      ),
                      dialogSubmitButton(
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
        child: FaIcon(
          FontAwesomeIcons.plus,
          color: Colors.white,
        ),
      ),
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: backbutton(),
              ),
              curved_background(
                title: 'Educational Resources',
              ),
              Expanded(
                flex: 6,
                child: Container(
                  decoration: curved_backgroundDecoration,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 65,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          CustomDropdownButton2(
                              hint: "Select Level",
                              value: LevelselectedValue,
                              dropdownItems: Levels,
                              onChanged: (value) {
                                setState(() {
                                  LevelselectedValue = value;
                                });
                              }),
                          CustomDropdownButton2(
                              hint: "Select Course",
                              value: courseSelectedValue,
                              dropdownItems: courses,
                              onChanged: (value) {
                                setState(() {
                                  courseSelectedValue = value;
                                });
                              }),
                        ],
                      ),
                      SizedBox(
                        height: 45,
                      ),
                      //below code need to be added preferable to a listview
                      SizedBox(
                        width: 300,
                        height: 300,
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              Container(
                                margin: EdgeInsets.all(10),
                                width: 282,
                                height: 44,
                                padding: EdgeInsets.all(6.0),
                                decoration: BoxDecoration(
                                  color: Color(0xFF199D8C),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Flexible(
                                      child: Row(
                                        children: [
                                          FaIcon(
                                            FontAwesomeIcons.youtube,
                                            color: Colors.white,
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Flexible(
                                            flex: 1,
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: const [
                                                SizedBox(
                                                  height: 10,
                                                ),
                                                Flexible(
                                                  child: Text(
                                                    "Intro to programming",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                  ), //pixeloverflow
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Delete_UpdateButtons(
                                      edit_onTap: () {
                                        Get.defaultDialog(
                                          title: "Edit Resource Information",
                                          content: Column(
                                            children: [
                                              Column(
                                                children: [
                                                  CollegeConnect_TextFormField(
                                                    label: 'Title',
                                                  ),
                                                  SizedBox(
                                                    height: 5,
                                                  ),
                                                  CollegeConnect_TextFormField(
                                                    label: 'Link',
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              dialogSubmitButton(
                                                onPressed: () {},
                                              ),
                                            ],
                                          ),
                                        );
                                      },
                                      delete_onTap: () {
                                        Get.defaultDialog(
                                          title:
                                              "are you sure about deleting this Resource?", //resouce name should come from data base.
                                          onCancel: () {
                                            //cancel the process?
                                          },
                                          onConfirm: () {
                                            //when it comes do deleting widgets, we will use this block of area for conforming the deletion process
                                          },
                                          cancelTextColor: Colors.red,
                                          confirmTextColor: Colors.black,
                                          titleStyle: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black),
                                          buttonColor: Colors.white,
                                          middleText: 'Intro into C++',
                                          middleTextStyle:
                                              TextStyle(fontSize: 18),
                                        );
                                      },
                                    ),
                                  ],
                                ),
                              ),
                            ],
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
      ),
    );
  }
}
