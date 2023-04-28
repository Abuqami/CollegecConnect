import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collegeconnect/coordinators_model.dart';
import 'package:collegeconnect/posts_academic_model.dart';
import 'package:collegeconnect/screens/landing_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../comments_model.dart';

class CoordinatorsPage extends StatefulWidget {
  const CoordinatorsPage({Key? key}) : super(key: key);

  @override
  State<CoordinatorsPage> createState() => _CoordinatorsPageState();
}

class _CoordinatorsPageState extends State<CoordinatorsPage> {
  String getCurrentUser() {
    final User? user = FirebaseAuth.instance.currentUser;
    if (user != null) {
      final userId = user.uid;
      return userId;
    } else {
      return '';
    }
  }

  final _fullNameController = TextEditingController();
  final _userIDController = TextEditingController();
  final _myCommentController = TextEditingController();
  late String formattedDate =
      DateFormat('MMM dd, HH:mm').format(DateTime.now());

  final postAcademicController = TextEditingController();
  final titlePostController = TextEditingController();

  bool _showForm = false;

  void _checkCoordinatorInfo() async {
    User? user = FirebaseAuth.instance.currentUser;

    if (user != null) {
      DocumentSnapshot doc = await FirebaseFirestore.instance
          .collection('coordinators')
          .doc(user.uid)
          .get();

      if (doc.exists) {
        // user is a coordinator and has already filled in their info
        setState(() {
          _showForm = false;
        });
      } else {
        // user is a coordinator but has not filled in their info yet
        setState(() {
          _showForm = true;
        });
      }
    } else {
      // user is not signed in
      setState(() {
        _showForm = false;
      });
    }
  }

  Future<void> _addCoordinatorInfo() async {
    User? user = FirebaseAuth.instance.currentUser;

    if (user != null) {
      final coordinators = CoordinatorsModel(
        fullName: _fullNameController.text,
        id: _userIDController.text,
      );

      await FirebaseFirestore.instance
          .collection('coordinators')
          .doc(user.uid)
          .set(coordinators.toJson());

      setState(() {
        _showForm = false;
      });
    }
  }

  @override
  void initState() {
    _checkCoordinatorInfo();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Widget buildComment(CommentsModel comment) {
      return Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 16.0,
              vertical: 8.0,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                4.0,
              ),
              color: Colors.grey.withOpacity(
                .1,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.account_circle_rounded,
                    ),
                    SizedBox(
                      width: 4.0,
                    ),
                    Text(
                      comment.fullName,
                      style: TextStyle(
                        fontSize: 12.0,
                        color: Colors.blueAccent,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 6.0,
                ),
                Row(
                  children: [
                    Flexible(
                      child: Text(
                        comment.comment,
                        style: TextStyle(
                          fontSize: 12.0,
                          color: Colors.black87,
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 6.0,
                ),
                Container(
                  alignment: Alignment.bottomRight,
                  child: Text(
                    comment.timestamp,
                    style: TextStyle(
                      fontSize: 10.0,
                      color: Colors.black87,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 2.0,
          ),
          Divider(),
        ],
      );
    }

    Widget buildPostAcademicList(PostsAcademicModel postAcademic) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 16.0,
              vertical: 8.0,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                4.0,
              ),
              color: Colors.grey.withOpacity(
                .1,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  postAcademic.fullName,
                  style: TextStyle(
                    fontSize: 12.0,
                    fontWeight: FontWeight.w500,
                    fontStyle: FontStyle.italic,
                    color: Colors.indigo,
                  ),
                ),
                SizedBox(
                  height: 4.0,
                ),
                Text(
                  postAcademic.titlePost,
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w600,
                    color: Colors.black87,
                  ),
                ),
                SizedBox(
                  height: 4.0,
                ),
                Text(
                  postAcademic.postAcademic,
                  style: TextStyle(
                    fontSize: 12.0,
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.italic,
                    color: Colors.black54,
                  ),
                ),
                SizedBox(
                  height: 4.0,
                ),
                Text(
                  postAcademic.timestamp,
                  style: TextStyle(
                    fontSize: 8.0,
                    fontWeight: FontWeight.w400,
                    color: Colors.black87,
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            margin: EdgeInsets.only(
              bottom: 8.0,
            ),
            height: 36.0,
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      deleteDocument(postAcademic);
                    });
                  },
                  child: Icon(
                    Icons.delete_rounded,
                    color: Colors.black87,
                    size: 18.0,
                  ),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.favorite_border_rounded,
                      size: 16.0,
                    ),
                    SizedBox(
                      width: 6.0,
                    ),
                    GestureDetector(
                      onTap: () {
                        showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                                  scrollable: true,
                                  title: Container(
                                    padding: EdgeInsets.only(
                                      bottom: 16.0,
                                    ),
                                    child: Text(
                                      "Comments",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(fontSize: 14),
                                    ),
                                  ),
                                  backgroundColor: Colors.white,
                                  contentPadding: EdgeInsets.symmetric(
                                    horizontal: 8.0,
                                  ),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(
                                      8.0,
                                    ),
                                  ),
                                  content: SingleChildScrollView(
                                    child: SizedBox(
                                      width: double.maxFinite,
                                      child: Column(
                                        children: [
                                          StreamBuilder<List<CommentsModel>>(
                                            stream:
                                                readComment(postAcademic.id),
                                            builder: (context, snapshot) {
                                              if (snapshot.hasError) {
                                                return Text(
                                                    'Something went wrong! ${snapshot.error}');
                                              } else if (snapshot.hasData) {
                                                final comment = snapshot.data!;
                                                return SizedBox(
                                                  height: 600.0,
                                                  child: ListView(
                                                    shrinkWrap: true,
                                                    children: comment
                                                        .map(buildComment)
                                                        .toList(),
                                                  ),
                                                );
                                              } else {
                                                return Center(
                                                  child:
                                                      CircularProgressIndicator(),
                                                );
                                              }
                                            },
                                          ),
                                          SizedBox(
                                            height: 20.0,
                                          ),
                                          Container(
                                            height: 42.0,
                                            alignment: Alignment.center,
                                            padding: EdgeInsets.symmetric(
                                              horizontal: 16.0,
                                            ),
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                width: 1.0,
                                                color:
                                                    Colors.grey.withOpacity(.5),
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(
                                                40.0,
                                              ),
                                            ),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Expanded(
                                                  child: TextField(
                                                    controller:
                                                        _myCommentController,
                                                    keyboardType:
                                                        TextInputType.text,
                                                    cursorHeight: 14.0,
                                                    cursorWidth: 1.0,
                                                    cursorColor: Colors.grey,
                                                    decoration: InputDecoration(
                                                      contentPadding:
                                                          EdgeInsets.zero,
                                                      border: InputBorder.none,
                                                    ),
                                                  ),
                                                ),
                                                GestureDetector(
                                                  onTap: () {
                                                    final comment =
                                                        CommentsModel(
                                                      comment:
                                                          _myCommentController
                                                              .text,
                                                      timestamp: formattedDate,
                                                    );
                                                    createComment(comment,
                                                        postAcademic.id);
                                                    _myCommentController
                                                        .clear();
                                                  },
                                                  child: Icon(
                                                    Icons.send_rounded,
                                                    size: 20.0,
                                                    color: Colors.black87,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                            height: 20.0,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ));
                      },
                      child: Icon(
                        Icons.comment_rounded,
                        size: 16.0,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      );
    }

    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        actions: [
          IconButton(
              onPressed: () {
                FirebaseAuth.instance.signOut();
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LandingPage(),
                  ),
                );
              },
              icon: Icon(
                Icons.logout_rounded,
                color: Colors.black87,
              ))
        ],
        title: Text(
          'Add Post Academic',
          style: TextStyle(
            fontSize: 14.0,
            color: Colors.black87,
          ),
        ),
        centerTitle: true,
      ),
      body: _showForm
          ? AlertDialog(
              title: Center(
                  child: Text(
                'Add Your Infos Like Coordinator',
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black54,
                ),
              )),
              content: SizedBox(
                height: 200.0,
                child: Column(
                  children: [
                    Container(
                      height: 48.0,
                      padding: EdgeInsets.symmetric(horizontal: 16.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          6.0,
                        ),
                        color: Colors.green.withOpacity(
                          .1,
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: TextField(
                              controller: _fullNameController,
                              keyboardType: TextInputType.text,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'full name',
                                hintStyle: TextStyle(
                                  fontSize: 12.0,
                                  color: Colors.green.withOpacity(
                                    .5,
                                  ),
                                  fontStyle: FontStyle.italic,
                                ),
                              ),
                            ),
                          ),
                          Icon(
                            Icons.person_rounded,
                            color: Colors.green.withOpacity(
                              .5,
                            ),
                            size: 16.0,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 16.0,
                    ),
                    Container(
                      height: 48.0,
                      padding: EdgeInsets.symmetric(horizontal: 16.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          6.0,
                        ),
                        color: Colors.green.withOpacity(
                          .1,
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: TextField(
                              controller: _userIDController,
                              keyboardType: TextInputType.text,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'create your ID',
                                hintStyle: TextStyle(
                                  fontSize: 12.0,
                                  color: Colors.green.withOpacity(
                                    .5,
                                  ),
                                  fontStyle: FontStyle.italic,
                                ),
                              ),
                            ),
                          ),
                          Icon(
                            Icons.perm_identity_rounded,
                            color: Colors.green.withOpacity(
                              .5,
                            ),
                            size: 16.0,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 16.0,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                            40.0,
                          ),
                        ),
                        elevation: 0.0,
                        fixedSize: Size(
                          double.maxFinite,
                          42.0,
                        ),
                      ),
                      onPressed: () async {
                        final coordinators = CoordinatorsModel(
                          fullName: _fullNameController.text,
                          id: _userIDController.text,
                        );
                        addCoordinatorInfos(coordinators);
                        _addCoordinatorInfo();
                      },
                      child: Text(
                        'Add Your Infos',
                        style: TextStyle(
                          fontSize: 12.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          : Container(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: StreamBuilder<List<PostsAcademicModel>>(
                stream: readPostAcademic(),
                builder: (context, snapshot) {
                  if (snapshot.hasError) {
                    return Text('Something went wrong! ${snapshot.error}');
                  } else if (snapshot.hasData) {
                    final post = snapshot.data!;
                    return SizedBox(
                      height: 600.0,
                      child: ListView(
                        shrinkWrap: true,
                        children: post.map(buildPostAcademicList).toList(),
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
        onPressed: () {
          showDialog(
              context: context,
              builder: (context) => AlertDialog(
                    content: SizedBox(
                      height: 340.0,
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 16.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                6.0,
                              ),
                              color: Colors.green.withOpacity(
                                .1,
                              ),
                            ),
                            child: TextField(
                              maxLines: 1,
                              controller: titlePostController,
                              keyboardType: TextInputType.text,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'title',
                                hintStyle: TextStyle(
                                  fontSize: 12.0,
                                  color: Colors.green.withOpacity(
                                    .5,
                                  ),
                                  fontStyle: FontStyle.italic,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 16.0,
                          ),
                          Container(
                            height: 200.0,
                            padding: EdgeInsets.symmetric(horizontal: 16.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                6.0,
                              ),
                              color: Colors.green.withOpacity(
                                .1,
                              ),
                            ),
                            child: TextField(
                              maxLines: 10,
                              controller: postAcademicController,
                              keyboardType: TextInputType.text,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'post',
                                hintStyle: TextStyle(
                                  fontSize: 12.0,
                                  color: Colors.green.withOpacity(
                                    .5,
                                  ),
                                  fontStyle: FontStyle.italic,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 16.0,
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.green,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                  40.0,
                                ),
                              ),
                              elevation: 0.0,
                              fixedSize: Size(
                                double.maxFinite,
                                42.0,
                              ),
                            ),
                            onPressed: () async {
                              final postAcademic = PostsAcademicModel(
                                  userID: getCurrentUser(),
                                  titlePost: titlePostController.text,
                                  postAcademic: postAcademicController.text,
                                  timestamp: formattedDate);
                              createCoordinatorsPosts(postAcademic);
                              postAcademicController.clear();
                              Navigator.pop(context);
                            },
                            child: Text(
                              'Add Your Post',
                              style: TextStyle(
                                fontSize: 12.0,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ));
        },
        child: Icon(Icons.add_comment_rounded),
      ),
    );
  }
}

Future<void> createCoordinatorsPosts(PostsAcademicModel postAcademic) async {
  await FirebaseFirestore.instance
      .collection('coordinators')
      .doc(FirebaseAuth.instance.currentUser!.uid)
      .get()
      .then((value) {
    postAcademic.fullName = value.get('full_name');
  });

  final docUser = FirebaseFirestore.instance
      .collection('coordinators_posts_academic')
      .doc();
  postAcademic.id = docUser.id;
  final json = postAcademic.toJson();
  await docUser.set(json);
}

Stream<List<PostsAcademicModel>> readPostAcademic() =>
    FirebaseFirestore.instance
        .collection('coordinators_posts_academic')
        .orderBy('date', descending: true)
        .where('userID',
            isEqualTo: FirebaseAuth.instance.currentUser?.uid.toString())
        .snapshots()
        .map((snapshot) => snapshot.docs
            .map((doc) => PostsAcademicModel.fromJson(doc.data()))
            .toList());

Future<void> addCoordinatorInfos(CoordinatorsModel coordinator) async {
  final docUser = FirebaseFirestore.instance.collection('coordinators').doc();
  coordinator.id = FirebaseAuth.instance.currentUser!.uid;
  final json = coordinator.toJson();
  await docUser.set(json);
}

Future<void> deleteDocument(PostsAcademicModel post) async {
  await FirebaseFirestore.instance
      .collection('coordinators_posts_academic')
      .doc(post.id)
      .delete();
}

Future<void> createComment(CommentsModel comment, String postId) async {
  await FirebaseFirestore.instance
      .collection('coordinators')
      .doc(FirebaseAuth.instance.currentUser!.uid)
      .get()
      .then((value) {
    comment.fullName = value.get('full_name');
  });

  final docUser = FirebaseFirestore.instance
      .collection('coordinators_posts_academic')
      .doc(postId)
      .collection('comments_coordinators')
      .doc();
  comment.id = docUser.id;
  final json = comment.toJson();
  await docUser.set(json);
}

Stream<List<CommentsModel>> readComment(String postId) => FirebaseFirestore
    .instance
    .collection('coordinators_posts_academic')
    .doc(postId)
    .collection('comments_coordinators')
    .orderBy('date', descending: true)
    .snapshots()
    .map((snapshot) => snapshot.docs
        .map((doc) => CommentsModel.fromJson(doc.data()))
        .toList());
