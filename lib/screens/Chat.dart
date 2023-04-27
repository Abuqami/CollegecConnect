import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:collegeconnect/Models/ChatMessage.dart';
import 'package:collegeconnect/widgets/Buttons/backbutton.dart';

TextEditingController message = TextEditingController();
List<String> names = ['Sami', 'saad', 'saqib'];
List<ChatMessage> messages = [
  ChatMessage(
      MessageContent: "Hello darling! how are you <3",
      MessengerType: "receiver"),
  ChatMessage(
      MessageContent: "هلا عليكم السلام ورحمة الله وبركاته",
      MessengerType: "sender"),
  ChatMessage(MessageContent: "Hello? i would welcome u to my organization which is all about constructiing a company that may ", MessengerType: "receiver"),
  ChatMessage(MessageContent: "الحمد لله ", MessengerType: "sender"),
  ChatMessage(MessageContent: "ماشاء الله", MessengerType: "receiver"),
  ChatMessage(MessageContent: "تبارك الله", MessengerType: "sender"),
  ChatMessage(MessageContent: "السلام عليكم", MessengerType: "receiver"),
  ChatMessage(
      MessageContent: "هلا عليكم السلام ورحمة الله وبركاته",
      MessengerType: "sender"),
  ChatMessage(MessageContent: "كيف حالك؟", MessengerType: "receiver"),
  ChatMessage(MessageContent: "الحمد لله ", MessengerType: "sender"),
  ChatMessage(MessageContent: "ماشاء الله", MessengerType: "receiver"),
  ChatMessage(MessageContent: "تبارك الله", MessengerType: "sender"),
  ChatMessage(MessageContent: "السلام عليكم", MessengerType: "receiver"),
  ChatMessage(
      MessageContent: "هلا عليكم السلام ورحمة الله وبركاته",
      MessengerType: "sender"),
  ChatMessage(MessageContent: "كيف حالك؟", MessengerType: "receiver"),
  ChatMessage(MessageContent: "الحمد لله ", MessengerType: "sender"),
  ChatMessage(MessageContent: "ماشاء الله", MessengerType: "receiver"),
  ChatMessage(MessageContent: "تبارك الله", MessengerType: "sender"),
];

class Chat extends StatelessWidget {
  const Chat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isandroidsmall = MediaQuery.of(context).size.height > 782;

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        flexibleSpace: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(14),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                backbutton(size: isandroidsmall? 24:18,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "AI-Level7",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: isandroidsmall ? 16 : 12),
                    ),
                    Text(
                      "25 Online",
                      style: TextStyle(fontSize: isandroidsmall ? 14 : 10),
                    ),
                  ],
                ),
                Icon(
                  FontAwesomeIcons.ellipsis,
                  size: isandroidsmall ? 24 : 18,
                ),
              ],
            ),
          ),
        ),
      ),
      body: Stack(
        children: <Widget>[
          ListView.builder(
            itemCount: messages
                .length, // responsible for defining the limit of the ListView
            padding: EdgeInsets.only(top: 10, bottom: 60),
            physics: ScrollPhysics(),

            itemBuilder: (context, index) {
              return Container(
                padding: EdgeInsets.only(
                    left: 16,
                    right: 16,
                    top: 10,
                    bottom: 10), // how the text is aligned inside the container
                child: Align(
                  alignment: messages[index].MessengerType == "sender"
                      ? Alignment.centerRight
                      : Alignment.centerLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.values[0],
                    children: [
                      SizedBox(
                        width: 5,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          messages[index].MessengerType == "sender"
                              ? ""
                              : names[
                                  0], //here the name of the sender should be based on his username in our database
                          style: TextStyle(
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.bottomSheet(
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(22),
                                    color: Colors.white),
                                width: 100,
                                height: 200,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        Get.back();
                                        Get.snackbar(
                                          "Message Copied",
                                          "Message copied to clipboard!🙂",
                                          snackPosition: SnackPosition.BOTTOM,
                                          backgroundColor: Color(0xFFF9DDAC),
                                          animationDuration:
                                              Duration(milliseconds: 100),
                                          duration: Duration(seconds: 2),
                                          margin: EdgeInsets.only(bottom: 70),
                                          icon: Icon(FontAwesomeIcons.copy),
                                        );
                                      },
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: const [
                                          Icon(FontAwesomeIcons.copy),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Text("Copy"),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    GestureDetector(
                                      onLongPress: () {},
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: const [
                                          Icon(
                                            FontAwesomeIcons.share,
                                            size: 20,
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            "Forward",
                                            style: TextStyle(fontSize: 20),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: const [
                                        Icon(FontAwesomeIcons.flag),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text("Report"),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(22),
                            color: messages[index].MessengerType == "sender"
                                ? Color(0xFF199D8C)
                                : Color(0xFFF9DDAC),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(10),
                            child: Text(
                              messages[index].MessageContent,
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              padding: EdgeInsets.only(left: 10, bottom: 10, top: 10),
              height: 60,
              color: Colors.white,
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: TextField(
                      controller: message,
                      decoration: InputDecoration(
                          hintText: "Write message...",
                          hintStyle: TextStyle(color: Colors.black54),
                          border: InputBorder.none),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  FloatingActionButton(
                    onPressed: () {},
                    backgroundColor: Colors.white,
                    elevation: 0,
                    child: Icon(
                      Icons.send,
                      color: Color(0xFF199D8C),
                      size: 18,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
