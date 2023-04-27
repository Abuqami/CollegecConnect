import 'package:collegeconnect/screens/MyApp4.dart';
import 'package:collegeconnect/screens/Preference.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter/services.dart';
import 'package:collegeconnect/utilities/constants.dart';

import 'Myaccount.dart';
import 'ToDo.dart';

class mymatsalt extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final IsPixel6 = MediaQuery.of(context).size.height > 820;
    final isAndoridsmall = MediaQuery.of(context).size.height > 780;
    final isPixel3 = MediaQuery.of(context).size.height > 736;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromRGBO(249, 221, 172, 1),
        body: SafeArea(
          child: Column(
            children: [
              Row(
                children: [
                  GestureDetector(
                      onTap: () {
                        Get.to(MyApp4());
                      },
                      child: Icon(
                        Icons.arrow_back,
                        size: 30,
                      )),
                  SizedBox(
                    width: 330,
                  ),
                  GestureDetector(
                      onTap: () {},
                      child: Icon(
                        Icons.more_horiz,
                        size: 30,
                      )),
                ],
              ),
              SizedBox(
                height: 0,
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  "My Materials",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                width: 400,
                height: 50,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(249, 221, 172, 1),
                  borderRadius: BorderRadius.only(),
                ),
              ),
              IsPixel6
                  ? Container(
                      width: 410,
                      height: 240,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15),
                        ),
                      ),
                    )
                  : isAndoridsmall
                      ? Container(
                          width: 400,
                          height: 140,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15),
                              topRight: Radius.circular(15),
                            ),
                          ),
                        )
                      : isPixel3
                          ? Container(
                              width: 400,
                              height: 150,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(15),
                                  topRight: Radius.circular(15),
                                ),
                              ),
                            )
                          : isAndoridsmall
                              ? Container(
                                  width: 420,
                                  height: 120,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(15),
                                        topRight: Radius.circular(15),
                                      )),
                                )
                              : Container(
                                  width: 420,
                                  height: 120,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(15),
                                        topRight: Radius.circular(15),
                                      )),
                                ),
              Container(
                height: 20,
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
              ),
              IsPixel6
                  ? Container(
                      width: 420,
                      height: 120,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(),
                      ),
                      child: UpperRow(),
                    )
                  : isPixel3
                      ? Container(
                          width: 400,
                          height: 120,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(),
                          ),
                          child: UpperRow(),
                        )
                      : isAndoridsmall
                          ? Container(
                              width: 400,
                              height: 120,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(),
                              ),
                              child: UpperRow(),
                            )
                          : Container(
                              width: 420,
                              height: 120,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(),
                              ),
                              child: UpperRow()),
              IsPixel6
                  ? Container(
                      width: 420,
                      height: 120,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(),
                      ),
                    )
                  : isPixel3
                      ? Container(
                          width: 400,
                          height: 120,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(),
                          ),
                        )
                      : isAndoridsmall
                          ? Container(
                              width: 400,
                              height: 120,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(),
                              ),
                            )
                          : Container(
                              width: 420,
                              height: 120,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(),
                              ),
                            ),
              IsPixel6
                  ? Container(
                      width: 420,
                      height: 202,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(),
                      ),
                    )
                  : isAndoridsmall
                      ? Container(
                          width: 400,
                          height: 140,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(),
                          ),
                        )
                      : isPixel3
                          ? Container(
                              width: 400,
                              height: 168.2,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(),
                              ),
                            )
                          : isAndoridsmall
                              ? Container(
                                  width: 400,
                                  height: 140,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.only(),
                                  ),
                                )
                              : Container(
                                  width: 420,
                                  height: 144,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.only(),
                                  ),
                                ),
            ],
          ),
        ),
      ),
    );
  }
}

class UpperRow extends StatelessWidget {
  const UpperRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 45,
        ),
        Button1(),
        SizedBox(
          width: 40,
        ),
        Button2(),
        SizedBox(
          width: 45,
        ),
      ],
    );
  }
}

class UpperRowSmall extends StatelessWidget {
  const UpperRowSmall({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 20,
        ),
        Button1(),
        SizedBox(
          width: 108,
        ),
        Button2(),
      ],
    );
  }
}

class Button2 extends StatelessWidget {
  const Button2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(ToDo());
      },
      child: Image.asset(
        'Images/Button2.png',
        width: 130,
        height: 130,
      ),
    );
  }
}

class Button1 extends StatelessWidget {
  const Button1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(HomePreference());
      },
      child: Image.asset(
        'Images/Button1.png',
        width: 130,
        height: 130,
      ),
    );
  }
}
