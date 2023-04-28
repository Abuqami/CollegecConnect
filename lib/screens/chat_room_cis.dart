import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../message_model.dart';

User? signedInUser = FirebaseAuth.instance.currentUser;

class ChatRoomCIS extends StatefulWidget {
  const ChatRoomCIS({super.key});

  @override
  State<ChatRoomCIS> createState() => _ChatRoomCISState();
}

class _ChatRoomCISState extends State<ChatRoomCIS> {
  @override
  Widget build(BuildContext context) {
    final messageController = TextEditingController();
    var dateToPostController = DateTime.now();
    String formattedDate =
        DateFormat('MMM dd, HH:mm').format(dateToPostController);

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(
          color: Colors.black87,
        ),
        title: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'CIS Chat Room',
              style: TextStyle(
                fontSize: 12.0,
                color: Colors.black87,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '${Random().nextInt(20)}',
                  style: TextStyle(
                    fontSize: 10.0,
                    color: Colors.grey.withOpacity(.8),
                  ),
                ),
                SizedBox(
                  width: 3.0,
                ),
                Container(
                  width: 6.0,
                  height: 6.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      10.0,
                    ),
                    color: Colors.lightGreen,
                  ),
                )
              ],
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.more_vert_rounded,
            ),
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 24.0,
                vertical: 36.0,
              ),
              child: StreamBuilder<List<MessageModel>>(
                stream: readMessages(),
                builder: (context, snapshot) {
                  if (snapshot.hasError) {
                    return Text('Something went wrong! ${snapshot.error}');
                  } else if (snapshot.hasData) {
                    final message = snapshot.data!;
                    return ListView(
                      reverse: true,
                      children: message.map(buildMessage).toList(),
                    );
                  } else {
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                },
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 16.0,
            ),
            height: 60,
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: TextField(
                    controller: messageController,
                    decoration: InputDecoration(
                        hintText: "Write message...",
                        hintStyle: TextStyle(
                          color: Colors.black54,
                          fontSize: 12.0,
                        ),
                        border: InputBorder.none),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                GestureDetector(
                  onTap: () {
                    final message = MessageModel(
                      message: messageController.text,
                      sender: signedInUser!.email.toString(),
                      timestamp: formattedDate,
                    );
                    storeMessage(message);
                    messageController.clear();
                  },
                  child: Icon(
                    Icons.send,
                    color: Colors.black87,
                    size: 18,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Future<void> storeMessage(MessageModel message) async {
    final docUser =
        FirebaseFirestore.instance.collection('chat_room_cis').doc();
    message.id = docUser.id;
    final json = message.toJson();
    await docUser.set(json);
  }

  Stream<List<MessageModel>> readMessages() => FirebaseFirestore.instance
      .collection('chat_room_cis')
      .orderBy('date', descending: false)
      .snapshots()
      .map((snapshot) => snapshot.docs.reversed
          .map((doc) => MessageModel.fromJson(doc.data()))
          .toList());
}

Widget buildMessage(MessageModel message) {
  final messageSender = message.sender;
  final currentUser = signedInUser!.email.toString();
  return Container(
    alignment: Alignment.centerRight,
    padding: EdgeInsets.symmetric(
      horizontal: 16.0,
      vertical: 10.0,
    ),
    margin: EdgeInsets.only(bottom: 12.0),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(
        4.0,
      ),
      color: Colors.grey.withOpacity(
        .1,
      ),
    ),
    child: Column(
      crossAxisAlignment: currentUser == messageSender
          ? CrossAxisAlignment.end
          : CrossAxisAlignment.start,
      children: [
        Text(
          message.message,
          style: TextStyle(
            fontSize: 12.0,
            color: Colors.black87,
          ),
        ),
        Container(
          alignment: currentUser == messageSender
              ? Alignment.bottomLeft
              : Alignment.bottomRight,
          child: Text(
            message.timestamp,
            style: TextStyle(
              fontSize: 8.0,
              fontStyle: FontStyle.italic,
              color: Colors.grey.withOpacity(
                .6,
              ),
            ),
          ),
        ),
      ],
    ),
  );
}

// Future<void> createChatRoom(ChatRoomModel room) async {
//   final docRef = FirebaseFirestore.instance.collection('chat_rooms').doc();
//   room.id = docRef.id;
//   final json = room.toJson();
//   await docRef.set(json);
// }
//
// Stream<List<ChatRoomModel>> readChatRoom(String user1Id, String user2Id) =>
//     FirebaseFirestore.instance
//         .collection('chat_rooms')
//         .where('user1_id', whereIn: [user1Id, user2Id])
//         .where('user2_id', whereIn: [user1Id, user2Id])
//         .orderBy('timestamp', descending: true)
//         .snapshots()
//         .map((snapshot) => snapshot.docs
//             .map((doc) => ChatRoomModel.fromJson(doc.data()))
//             .toList());
