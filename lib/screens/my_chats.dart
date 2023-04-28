import 'package:collegeconnect/screens/chat_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyChats extends StatelessWidget {
  const MyChats({super.key});

  @override
  Widget build(BuildContext context) {
    final isAndoridsmall = MediaQuery.of(context).size.height > 780;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black87,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Text(
          'Chat History',
          style: TextStyle(
            fontSize: 14.0,
            color: Colors.black87,
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 16.0,
          vertical: 36.0,
        ),
        child: ListView.builder(
            itemCount: 10, itemBuilder: ((context, index) => Group())),
      ),
    );
  }
}

class Group extends StatelessWidget {
  const Group({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(
          ChatPage(),
        );
      },
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 16.0,
          vertical: 20.0,
        ),
        margin: EdgeInsets.only(
          bottom: 12.0,
        ),
        decoration: BoxDecoration(
          color: Colors.grey.withOpacity(
            .1,
          ),
          borderRadius: BorderRadius.circular(
            6.0,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(Icons.account_circle_rounded),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "CIS-level 8",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 12.0,
                      ),
                    ),
                    SizedBox(
                      height: 6.0,
                    ),
                    Text(
                      "Guys I have a... ",
                      style: TextStyle(fontSize: 10.0, color: Colors.grey),
                    ),
                  ],
                ),
              ],
            ),
            Text(
              "15M",
              style: TextStyle(
                fontSize: 10.0,
                color: Colors.black87,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
