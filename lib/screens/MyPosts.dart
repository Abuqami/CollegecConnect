import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter/services.dart';
import 'package:collegeconnect/utilities/constants.dart';

import 'Myaccount.dart';

class Myposts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final IsPixel6 = MediaQuery.of(context).size.height > 820;
    final isAndoridsmall = MediaQuery.of(context).size.height > 780;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xFFF9DDAC),
      body: SafeArea(
        child: Column(children: [
          Row(
            children: [
              GestureDetector(
                  onTap: () {
                    Get.to(myacc());
                  },
                  child: Icon(
                    Icons.arrow_back,
                    size: 30,
                  )),
            ],
          ),
          Align(
            alignment: Alignment.center,
            child: Text(
              "My posts",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
          Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Container(
                width: 250,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                child: TextField(
                  onChanged: (value) {},
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Search for a post ..."),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
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
                  itemCount: 10, itemBuilder: ((context, index) => Post())),
            ),
          ),
          IsPixel6
              ? AddButtonBig()
              : isAndoridsmall
                  ? AddButton()
                  : AddButtonSmall(),
        ]),
      ),
    );
  }
}

class AddButton extends StatelessWidget {
  const AddButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.white),
      height: 100,
      width: 390,
      child: Row(
        children: [
          SizedBox(
            width: 330,
          ),
          GestureDetector(
            onTap: () {
              showDialog(
                  context: context,
                  builder: ((context) => AlertDialog(
                        content: Stack(
                          children: [
                            Row(
                              children: [
                                GestureDetector(
                                  child: Image.asset(
                                    'Images/Delete.png',
                                    width: 20,
                                    height: 20,
                                  ),
                                ),
                                SizedBox(
                                  width: 220,
                                ),
                                GestureDetector(
                                  child: Image.asset(
                                    'Images/Message.png',
                                    width: 20,
                                    height: 20,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                        title: (Text(
                          "Post",
                          textAlign: TextAlign.center,
                        )),
                        backgroundColor: Color(0xFFF9DDAC),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        actions: [
                          Container(
                            width: 310,
                            height: 100,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)),
                            child: TextField(
                              onChanged: (value) {},
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Enter Descreption..."),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          SizedBox(
                            height: 50,
                          ),
                          Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(color: Colors.black),
                                width: 290,
                                height: 1,
                              )
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              GestureDetector(
                                onTap: () {},
                                child: Image.asset(
                                  'Images/Album.png',
                                  width: 25,
                                  height: 25,
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              GestureDetector(
                                onTap: () {},
                                child: Image.asset(
                                  'Images/Link.png',
                                  width: 25,
                                  height: 25,
                                ),
                              ),
                            ],
                          )
                        ],
                      )));
            },
            child: Image.asset(
              'Images/Add.png',
              width: 60,
              height: 60,
            ),
          ),
        ],
      ),
    );
  }
}

class AddButtonBig extends StatelessWidget {
  const AddButtonBig({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.white),
      height: 100,
      width: 420,
      child: Row(
        children: [
          SizedBox(
            width: 330,
          ),
          GestureDetector(
            onTap: () {
              showDialog(
                  context: context,
                  builder: ((context) => AlertDialog(
                        content: Stack(
                          children: [
                            Row(
                              children: [
                                GestureDetector(
                                  child: Image.asset(
                                    'Images/Delete.png',
                                    width: 20,
                                    height: 20,
                                  ),
                                ),
                                SizedBox(
                                  width: 220,
                                ),
                                GestureDetector(
                                  child: Image.asset(
                                    'Images/Message.png',
                                    width: 20,
                                    height: 20,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                        title: (Text(
                          "Post",
                          textAlign: TextAlign.center,
                        )),
                        backgroundColor: Color(0xFFF9DDAC),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        actions: [
                          Container(
                            width: 310,
                            height: 100,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)),
                            child: TextField(
                              onChanged: (value) {},
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Enter Descreption..."),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          SizedBox(
                            height: 50,
                          ),
                          Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(color: Colors.black),
                                width: 290,
                                height: 1,
                              )
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              GestureDetector(
                                onTap: () {},
                                child: Image.asset(
                                  'Images/Album.png',
                                  width: 25,
                                  height: 25,
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              GestureDetector(
                                onTap: () {},
                                child: Image.asset(
                                  'Images/Link.png',
                                  width: 25,
                                  height: 25,
                                ),
                              ),
                            ],
                          )
                        ],
                      )));
            },
            child: Image.asset(
              'Images/Add.png',
              width: 60,
              height: 60,
            ),
          ),
        ],
      ),
    );
  }
}

class AddButtonSmall extends StatelessWidget {
  const AddButtonSmall({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.white),
      height: 60,
      child: Row(
        children: [
          SizedBox(
            width: 335,
          ),
          GestureDetector(
            onTap: () {
              showDialog(
                  context: context,
                  builder: ((context) => AlertDialog(
                        content: Stack(
                          children: [
                            Row(
                              children: [
                                GestureDetector(
                                  child: Image.asset(
                                    'Images/Delete.png',
                                    width: 20,
                                    height: 20,
                                  ),
                                ),
                                SizedBox(
                                  width: 220,
                                ),
                                GestureDetector(
                                  child: Image.asset(
                                    'Images/Message.png',
                                    width: 20,
                                    height: 20,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                        title: (Text(
                          "Post",
                          textAlign: TextAlign.center,
                        )),
                        backgroundColor: Color(0xFFF9DDAC),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        actions: [
                          Container(
                            width: 310,
                            height: 100,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)),
                            child: TextField(
                              onChanged: (value) {},
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Enter Descreption..."),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          SizedBox(
                            height: 50,
                          ),
                          Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(color: Colors.black),
                                width: 290,
                                height: 1,
                              )
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              GestureDetector(
                                onTap: () {},
                                child: Image.asset(
                                  'Images/Album.png',
                                  width: 25,
                                  height: 25,
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              GestureDetector(
                                onTap: () {},
                                child: Image.asset(
                                  'Images/Link.png',
                                  width: 25,
                                  height: 25,
                                ),
                              ),
                            ],
                          )
                        ],
                      )));
            },
            child: Image.asset(
              'Images/Add.png',
              width: 60,
              height: 60,
            ),
          ),
        ],
      ),
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
                width: 17,
              )
            : isAndoridsmall
                ? Container(
                    width: 8,
                  )
                : Container(
                    width: 18,
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
                Image.asset(
                  'Images/Blackprofile.png',
                  width: 30,
                  height: 30,
                ),
                SizedBox(
                  width: 5,
                ),
                Text("Mohammed Ali"),
                SizedBox(
                  width: 5,
                ),
                Text("@moham123"),
                SizedBox(
                  width: 120,
                ),
                GestureDetector(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: ((context) => AlertDialog(
                            content: Text(
                              'Are you sure about deleting this post?',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            actions: [
                              TextButton(
                                  onPressed: (() {
                                    Navigator.pop(context);
                                  }),
                                  child: Text(
                                    'Cancel',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 14),
                                  )),
                              TextButton(
                                  onPressed: (() {}),
                                  child: Text(
                                    'Yes',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                    ),
                                  ))
                            ],
                            backgroundColor: Color(0xFFF9DDAC),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30)))));
                  },
                  child: Image.asset(
                    'Images/Delete.png',
                    width: 15,
                    height: 15,
                  ),
                ),
              ]),
            ),
            Container(
              child: Row(children: [
                SizedBox(
                  width: 30,
                ),
                Flexible(child: Text("This is an example of a post")),
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
                    child: Text("10H"),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Image.asset(
                      'Images/Update.png',
                      width: 200,
                      height: 40,
                    ),
                  ),
                  Container(
                    child: Row(children: [
                      SizedBox(
                        width: 30,
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
                                        children: [Text("10H")],
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
