import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../notes_model.dart';

class ToDoPage extends StatefulWidget {
  const ToDoPage({super.key});

  @override
  _ToDoPageState createState() => _ToDoPageState();
}

class _ToDoPageState extends State<ToDoPage> {
  String getCurrentUser() {
    final User? user = FirebaseAuth.instance.currentUser;
    if (user != null) {
      final userId = user.uid;
      return userId;
    } else {
      return '';
    }
  }

  final _titleNoteController = TextEditingController();
  final _noteController = TextEditingController();
  late String formattedDate =
      DateFormat('MMM dd, HH:mm').format(DateTime.now());

  Widget buildNoteCard(NotesModel note) {
    return GestureDetector(
      onTap: () {
        showDialog(
            context: context,
            builder: (context) => AlertDialog(
                  content: Text(
                    note.note,
                  ),
                ));
      },
      child: Container(
        margin: EdgeInsets.only(
          bottom: 12.0,
        ),
        padding: EdgeInsets.symmetric(
          horizontal: 16.0,
          vertical: 12.0,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            8.0,
          ),
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: const [
              Colors.black87,
              Colors.black54,
            ],
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  note.title,
                  style: TextStyle(
                    fontSize: 14.0,
                    color: Colors.white,
                  ),
                ),
                Text(
                  note.date,
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontSize: 10.0,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            GestureDetector(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    content: SizedBox(
                      height: 76.0,
                      child: Column(
                        children: [
                          Text(
                            'Are You Sure to Delete this Note ?',
                            style: TextStyle(
                                fontSize: 12.0, color: Colors.black54),
                          ),
                          SizedBox(
                            height: 16.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.black87,
                                  elevation: 0.0,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(40.0),
                                  ),
                                ),
                                onPressed: () {
                                  deleteNote(note);
                                  Navigator.pop(context);
                                },
                                child: Text(
                                  'Yes, I\'m Sure',
                                  style: TextStyle(fontSize: 10.0),
                                ),
                              ),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.black87,
                                  elevation: 0.0,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(
                                      40.0,
                                    ),
                                  ),
                                ),
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: Text(
                                  'No',
                                  style: TextStyle(fontSize: 10.0),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
              child: Icon(
                Icons.delete_rounded,
                size: 18.0,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: BackButton(
          color: Colors.black87,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.more_vert_rounded,
              color: Colors.black87,
            ),
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 24.0,
          vertical: 48.0,
        ),
        child: StreamBuilder<List<NotesModel>>(
          stream: readNotes(),
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              return Text('Something went wrong! ${snapshot.error}');
            } else if (snapshot.hasData) {
              final note = snapshot.data!;
              return SizedBox(
                height: 600.0,
                child: ListView(
                  shrinkWrap: true,
                  children: note.map(buildNoteCard).toList(),
                ),
              );
            } else {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black87,
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) => AlertDialog(
              title: Center(
                child: Text(
                  'Add Your Note',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.black54,
                  ),
                ),
              ),
              content: SizedBox(
                width: 400.0,
                height: 300.0,
                child: ListView(children: [
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 16.0,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        6.0,
                      ),
                      color: Colors.lightGreenAccent.withOpacity(
                        .2,
                      ),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextField(
                            controller: _titleNoteController,
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'add title',
                                hintStyle: TextStyle(
                                    fontStyle: FontStyle.italic,
                                    fontSize: 12.0)),
                          ),
                        ),
                        Icon(
                          Icons.title_rounded,
                          size: 18.0,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 12.0,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 16.0,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        6.0,
                      ),
                      color: Colors.lightGreenAccent.withOpacity(
                        .2,
                      ),
                    ),
                    child: TextField(
                      controller: _noteController,
                      maxLines: 10,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'add Note',
                          hintStyle: TextStyle(
                              fontStyle: FontStyle.italic, fontSize: 12.0)),
                    ),
                  ),
                  SizedBox(
                    height: 12.0,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      elevation: 0.0,
                      backgroundColor: Colors.green,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                          40.0,
                        ),
                      ),
                    ),
                    onPressed: () {
                      final note = NotesModel(
                          userId: getCurrentUser(),
                          title: _titleNoteController.text,
                          note: _noteController.text,
                          date: formattedDate);
                      createNote(note);
                      Navigator.pop(context);
                      _titleNoteController.clear();
                      _noteController.clear();
                    },
                    child: Text('Add & Save'),
                  ),
                ]),
              ),
            ),
          );
        },
        child: Icon(
          Icons.add,
        ),
      ),
    );
  }
}

Future<void> createNote(NotesModel note) async {
  final docUser = FirebaseFirestore.instance.collection('notes').doc();
  note.id = docUser.id;
  final json = note.toJson();
  await docUser.set(json);
}

Stream<List<NotesModel>> readNotes() => FirebaseFirestore.instance
    .collection('notes')
    .orderBy('date', descending: true)
    .where('userId',
        isEqualTo: FirebaseAuth.instance.currentUser?.uid.toString())
    .snapshots()
    .map((snapshot) =>
        snapshot.docs.map((doc) => NotesModel.fromJson(doc.data())).toList());

Future<void> deleteNote(NotesModel note) async {
  await FirebaseFirestore.instance.collection('notes').doc(note.id).delete();
}
