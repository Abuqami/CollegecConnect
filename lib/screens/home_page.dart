import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import '../posts_academic_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 36.0),
        child: StreamBuilder<List<PostsAcademicModel>>(
          stream: readPostAcademic(),
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              return Text('Something went wrong! ${snapshot.error}');
            } else if (snapshot.hasData) {
              final postAcademic = snapshot.data!;
              return SizedBox(
                height: 600.0,
                child: ListView(
                  shrinkWrap: true,
                  children: postAcademic.map(buildPostAcademicList).toList(),
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
    );
  }
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
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              children: const [
                Icon(
                  Icons.favorite_border_rounded,
                  size: 16.0,
                ),
                SizedBox(
                  width: 6.0,
                ),
                Icon(
                  Icons.comment_rounded,
                  size: 16.0,
                ),
              ],
            )
          ],
        ),
      ),
    ],
  );
}

Stream<List<PostsAcademicModel>> readPostAcademic() =>
    FirebaseFirestore.instance
        .collection('coordinators_posts_academic')
        .orderBy('date', descending: true)
        .snapshots()
        .map((snapshot) => snapshot.docs
            .map((doc) => PostsAcademicModel.fromJson(doc.data()))
            .toList());
