import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'course_materials_page.dart';

class HomeAboutMajor extends StatefulWidget {
  @override
  _HomeAboutMajorState createState() => _HomeAboutMajorState();

  HomeAboutMajor({
    required this.title,
    required this.description,
    required this.page,
  });

  final String title;
  final String description;
  final Widget page;
}

class _HomeAboutMajorState extends State<HomeAboutMajor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.menu_rounded,
            color: Colors.black87,
          ),
        ),
      ),
      body: Container(
          padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        "Description",
                        style: TextStyle(
                          color: Colors.black87,
                          fontWeight: FontWeight.bold,
                          fontSize: 14.0,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 8.0,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 16.0,
                        vertical: 18.0,
                      ),
                      decoration: BoxDecoration(
                        color: Color(
                          0x29F9DDAC,
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(
                            8.0,
                          ),
                        ),
                      ),
                      child: Text(
                        widget.description,
                        style: TextStyle(
                          color: Colors.black87,
                          fontSize: 10.0,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(15),
                                  topRight: Radius.circular(15),
                                )),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: <Widget>[
                                      GestureDetector(
                                        onTap: () {
                                          Get.to(
                                            widget.page,
                                          );
                                        },
                                        child: Container(
                                          width: 140,
                                          height: 140,
                                          decoration: BoxDecoration(
                                            color: Color(
                                              0x29F9DDAC,
                                            ),
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(
                                                8.0,
                                              ),
                                            ),
                                          ),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: const [
                                              Icon(
                                                Icons
                                                    .mark_unread_chat_alt_sharp,
                                                size: 36.0,
                                              ),
                                              Text(
                                                "Group Chat",
                                                style: TextStyle(
                                                  color: Colors.black87,
                                                  fontSize: 12.0,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 48.0,
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          Get.to(
                                            CoursesMaterialsPage(
                                                title: widget.title),
                                          );
                                        },
                                        //alignment: Alignment.center,
                                        child: Container(
                                          width: 140,
                                          height: 140,
                                          decoration: BoxDecoration(
                                            color: const Color(
                                              0x29F9DDAC,
                                            ),
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(
                                                8.0,
                                              ),
                                            ),
                                          ),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: const [
                                              Icon(
                                                Icons.menu_book,
                                                size: 36.0,
                                                color: Colors.black87,
                                              ),
                                              Text(
                                                "Course Materials",
                                                style: TextStyle(
                                                  color: Colors.black87,
                                                  fontSize: 12.0,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
