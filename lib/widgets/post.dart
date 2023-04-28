import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Post extends StatelessWidget {
  Post({super.key, required this.context});

  BuildContext context;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      margin: EdgeInsets.symmetric(horizontal: 8.0, vertical: 12.0),
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(.1),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Image.asset(
                      'Images/Blackprofile.png',
                      width: 24.0,
                      height: 24.0,
                    ),
                    SizedBox(
                      width: 4.0,
                    ),
                    Text(
                      "Mohammed",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 4.0,
                    ),
                    Text(
                      "@moham123",
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 10.0,
                      ),
                    ),
                  ],
                ),
                Text(
                  "10M",
                  style: TextStyle(
                    fontSize: 12.0,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 08.0,
          ),
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.symmetric(
              horizontal: 12.0,
            ),
            child: Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elitLorem ipsum dolor sit amet, consectetur.",
              style: TextStyle(
                fontSize: 12.0,
                fontStyle: FontStyle.italic,
                color: Colors.black87,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Icon(
                        Icons.favorite_outline_outlined,
                        size: 18,
                      ),
                    ),
                    SizedBox(
                      width: 2.0,
                    ),
                    Text(
                      "2.4k",
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 10.0,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 12.0,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: () {
                        showDialog(
                            context: context,
                            builder: ((context) => AlertDialog(
                                  backgroundColor: Colors.white,
                                  contentPadding: EdgeInsets.zero,
                                  scrollable: true,
                                  content: Column(
                                    children: [
                                      Container(
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 6.0,
                                          vertical: 8.0,
                                        ),
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                            2.0,
                                          ),
                                          color: Colors.grey.withOpacity(.1),
                                        ),
                                        child: Column(
                                          children: [
                                            Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.end,
                                              children: [
                                                Image.asset(
                                                  'Images/Blackprofile.png',
                                                  width: 16.0,
                                                  height: 16.0,
                                                ),
                                                SizedBox(
                                                  width: 4.0,
                                                ),
                                                Text(
                                                  "Mohammed",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 12.0),
                                                ),
                                                SizedBox(
                                                  width: 4.0,
                                                ),
                                                Text(
                                                  "@moham123",
                                                  style: TextStyle(
                                                    color: Colors.blue,
                                                    fontSize: 10.0,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 08.0,
                                            ),
                                            Container(
                                              alignment: Alignment.center,
                                              margin: EdgeInsets.symmetric(
                                                horizontal: 12.0,
                                              ),
                                              child: Text(
                                                "Lorem ipsum dolor sit amet, consectetur adipiscing elitLorem ipsum dolor sit amet, consectetur. Lorem ipsum dolor sit amet, consectetur adipiscing elitLorem ipsum dolor sit amet, consectetur.",
                                                style: TextStyle(
                                                  fontSize: 10.0,
                                                  fontStyle: FontStyle.italic,
                                                  color: Colors.black87,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        child: Divider(
                                            color: Colors.grey.withOpacity(.4),
                                            height: 3.0),
                                      ),
                                      Container(
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 6.0,
                                          vertical: 8.0,
                                        ),
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                            2.0,
                                          ),
                                          color: Colors.grey.withOpacity(.1),
                                        ),
                                        child: Column(
                                          children: [
                                            Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.end,
                                              children: [
                                                Image.asset(
                                                  'Images/Blackprofile.png',
                                                  width: 16.0,
                                                  height: 16.0,
                                                ),
                                                SizedBox(
                                                  width: 4.0,
                                                ),
                                                Text(
                                                  "Mohammed",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 12.0),
                                                ),
                                                SizedBox(
                                                  width: 4.0,
                                                ),
                                                Text(
                                                  "@moham123",
                                                  style: TextStyle(
                                                    color: Colors.blue,
                                                    fontSize: 10.0,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 08.0,
                                            ),
                                            Container(
                                              alignment: Alignment.center,
                                              margin: EdgeInsets.symmetric(
                                                horizontal: 12.0,
                                              ),
                                              child: Text(
                                                "Lorem ipsum dolor sit amet, consectetur adipiscing elitLorem ipsum dolor sit amet, consectetur. Lorem ipsum dolor sit amet, consectetur adipiscing elitLorem ipsum dolor sit amet, consectetur Lorem ipsum dolor sit amet, consectetur adipiscing elitLorem ipsum dolor sit amet, consectetur. Lorem ipsum dolor sit amet, consectetur adipiscing elitLorem ipsum dolor sit amet, consectetur Lorem ipsum dolor sit amet, consectetur adipiscing elitLorem ipsum dolor sit amet, consectetur. Lorem ipsum dolor sit amet, consectetur adipiscing elitLorem ipsum dolor sit amet, consectetur Lorem ipsum dolor sit amet, consectetur adipiscing elitLorem ipsum dolor sit amet, consectetur. Lorem ipsum dolor sit amet, consectetur adipiscing elitLorem ipsum dolor sit amet, consectetur Lorem ipsum dolor sit amet, consectetur adipiscing elitLorem ipsum dolor sit amet, consectetur. Lorem ipsum dolor sit amet, consectetur adipiscing elitLorem ipsum dolor sit amet, consectetur.",
                                                style: TextStyle(
                                                  fontSize: 10.0,
                                                  fontStyle: FontStyle.italic,
                                                  color: Colors.black87,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        child: Divider(
                                            color: Colors.grey.withOpacity(.4),
                                            height: 3.0),
                                      ),
                                      Container(
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 6.0,
                                          vertical: 8.0,
                                        ),
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                            2.0,
                                          ),
                                          color: Colors.grey.withOpacity(.1),
                                        ),
                                        child: Column(
                                          children: [
                                            Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.end,
                                              children: [
                                                Image.asset(
                                                  'Images/Blackprofile.png',
                                                  width: 16.0,
                                                  height: 16.0,
                                                ),
                                                SizedBox(
                                                  width: 4.0,
                                                ),
                                                Text(
                                                  "Mohammed",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 12.0),
                                                ),
                                                SizedBox(
                                                  width: 4.0,
                                                ),
                                                Text(
                                                  "@moham123",
                                                  style: TextStyle(
                                                    color: Colors.blue,
                                                    fontSize: 10.0,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 08.0,
                                            ),
                                            Container(
                                              alignment: Alignment.center,
                                              margin: EdgeInsets.symmetric(
                                                horizontal: 12.0,
                                              ),
                                              child: Text(
                                                "Lorem ipsum dolor sit amet, consectetur adipiscing elitLorem ipsum dolor sit amet, consectetur. Lorem ipsum dolor sit amet, consectetur adipiscing elitLorem ipsum dolor sit amet, consectetur Lorem ipsum dolor sit amet, consectetur adipiscing elitLorem ipsum dolor sit amet, consectetur. Lorem ipsum dolor sit amet, consectetur adipiscing elitLorem ipsum dolor sit amet, consectetur Lorem ipsum dolor sit amet, consectetur adipiscing elitLorem ipsum dolor sit amet, consectetur. Lorem ipsum dolor sit amet, consectetur adipiscing elitLorem ipsum dolor sit amet, consectetur Lorem ipsum dolor sit amet, consectetur adipiscing elitLorem ipsum dolor sit amet, consectetur. Lorem ipsum dolor sit amet, consectetur adipiscing elitLorem ipsum dolor sit amet, consectetur.",
                                                style: TextStyle(
                                                  fontSize: 10.0,
                                                  fontStyle: FontStyle.italic,
                                                  color: Colors.black87,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        child: Divider(
                                            color: Colors.grey.withOpacity(.4),
                                            height: 3.0),
                                      ),
                                      Container(
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 6.0,
                                          vertical: 8.0,
                                        ),
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                            2.0,
                                          ),
                                          color: Colors.grey.withOpacity(.1),
                                        ),
                                        child: Column(
                                          children: [
                                            Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.end,
                                              children: [
                                                Image.asset(
                                                  'Images/Blackprofile.png',
                                                  width: 16.0,
                                                  height: 16.0,
                                                ),
                                                SizedBox(
                                                  width: 4.0,
                                                ),
                                                Text(
                                                  "Mohammed",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 12.0),
                                                ),
                                                SizedBox(
                                                  width: 4.0,
                                                ),
                                                Text(
                                                  "@moham123",
                                                  style: TextStyle(
                                                    color: Colors.blue,
                                                    fontSize: 10.0,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 08.0,
                                            ),
                                            Container(
                                              alignment: Alignment.center,
                                              margin: EdgeInsets.symmetric(
                                                horizontal: 12.0,
                                              ),
                                              child: Text(
                                                "Lorem ipsum dolor sit amet, consectetur adipiscing elitLorem ipsum dolor sit amet, consectetur. Lorem ipsum dolor sit amet, consectetur adipiscing elitLorem ipsum dolor sit amet, consectetur Lorem ipsum dolor sit amet, consectetur adipiscing elitLorem ipsum dolor sit amet, consectetur. Lorem ipsum dolor sit amet, consectetur adipiscing elitLorem ipsum dolor sit amet, consectetur.",
                                                style: TextStyle(
                                                  fontSize: 10.0,
                                                  fontStyle: FontStyle.italic,
                                                  color: Colors.black87,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        child: Divider(
                                            color: Colors.grey.withOpacity(.4),
                                            height: 3.0),
                                      ),
                                      Container(
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 6.0,
                                          vertical: 8.0,
                                        ),
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                            2.0,
                                          ),
                                          color: Colors.grey.withOpacity(.1),
                                        ),
                                        child: Column(
                                          children: [
                                            Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.end,
                                              children: [
                                                Image.asset(
                                                  'Images/Blackprofile.png',
                                                  width: 16.0,
                                                  height: 16.0,
                                                ),
                                                SizedBox(
                                                  width: 4.0,
                                                ),
                                                Text(
                                                  "Mohammed",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 12.0),
                                                ),
                                                SizedBox(
                                                  width: 4.0,
                                                ),
                                                Text(
                                                  "@moham123",
                                                  style: TextStyle(
                                                    color: Colors.blue,
                                                    fontSize: 10.0,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 08.0,
                                            ),
                                            Container(
                                              alignment: Alignment.center,
                                              margin: EdgeInsets.symmetric(
                                                horizontal: 12.0,
                                              ),
                                              child: Text(
                                                "Lorem ipsum dolor sit amet, consectetur adipiscing elitLorem ipsum dolor sit amet, consectetur Lorem ipsum dolor sit amet, consectetur adipiscing elitLorem ipsum dolor sit amet, consectetur. Lorem ipsum dolor sit amet, consectetur adipiscing elitLorem ipsum dolor sit amet, consectetur Lorem ipsum dolor sit amet, consectetur adipiscing elitLorem ipsum dolor sit amet, consectetur. Lorem ipsum dolor sit amet, consectetur adipiscing elitLorem ipsum dolor sit amet, consectetur.",
                                                style: TextStyle(
                                                  fontSize: 10.0,
                                                  fontStyle: FontStyle.italic,
                                                  color: Colors.black87,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        child: Divider(
                                            color: Colors.grey.withOpacity(.4),
                                            height: 3.0),
                                      ),
                                    ],
                                  ),
                                )));
                      },
                      child: Icon(
                        Icons.chat,
                        size: 16.0,
                        color: Colors.black87,
                      ),
                    ),
                    SizedBox(
                      width: 2.0,
                    ),
                    Text(
                      "1.1k",
                      style: TextStyle(fontSize: 10.0, color: Colors.black87),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
