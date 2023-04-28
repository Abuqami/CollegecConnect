import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collegeconnect/resources_model.dart';
import 'package:collegeconnect/widgets/Buttons/DeleteUpdateButtons.dart';
import 'package:collegeconnect/widgets/Buttons/dialogSubmitButton.dart';
import 'package:collegeconnect/widgets/CollegeConnect_TextFormField.dart';
import 'package:dropdown_button2/custom_dropdown_button2.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

String getCurrentUser() {
  final User? user = FirebaseAuth.instance.currentUser;

  if (user != null) {
    final userId = user.uid;
    return userId;
  } else {
    return '';
  }
}

List<String> selectLeader = [
  'CIS',
  'CS',
  'CYS',
  'AI',
];
String selectLeaderAcademic = 'CIS';

class Educational_Resources extends StatefulWidget {
  const Educational_Resources({Key? key}) : super(key: key);

  @override
  State<Educational_Resources> createState() => EducationalResourcesState();
}

class EducationalResourcesState extends State<Educational_Resources> {
  final _titleController = TextEditingController();
  final _descriptionController = TextEditingController();
  final _youtubeLinkController = TextEditingController();
  final _soundCloudLinkController = TextEditingController();
  final _spotifyLinkController = TextEditingController();
  final String _dateToPostController =
      DateFormat('MMM dd, HH:mm:ss').format(DateTime.now());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        iconTheme: IconThemeData(
          color: Colors.black87,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.deepPurple,
        onPressed: () {
          Get.defaultDialog(
            title: "Add Educational Resource Information",
            titleStyle: TextStyle(
              fontSize: 14.0,
            ),
            titlePadding: EdgeInsets.all(25),
            content: Flexible(
              child: Form(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      CollegeConnectTextFormField(
                        textFieldController: _titleController,
                        label: 'Title',
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      CollegeConnectTextFormField(
                        textFieldController: _descriptionController,
                        label: 'Description',
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      CollegeConnectTextFormField(
                        textFieldController: _youtubeLinkController,
                        label: 'Youtube',
                        formIcon: Icon(
                          FontAwesomeIcons.youtube,
                          color: Colors.red,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      CollegeConnectTextFormField(
                        textFieldController: _soundCloudLinkController,
                        label: 'SoundCloud Link',
                        formIcon: Icon(
                          FontAwesomeIcons.soundcloud,
                          color: Colors.orange,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      CollegeConnectTextFormField(
                        textFieldController: _spotifyLinkController,
                        label: 'Spotify Link',
                        formIcon: Icon(
                          FontAwesomeIcons.spotify,
                          color: Colors.green,
                        ),
                      ),
                      SizedBox(
                        height: 16.0,
                      ),
                      DialogSubmitButton(
                        onPressed: () {
                          final resource = ResourcesModel(
                              userID: getCurrentUser(),
                              academic: selectLeaderAcademic,
                              title: _titleController.text,
                              description: _descriptionController.text,
                              youtubeLink: _youtubeLinkController.text,
                              soundCloudLink: _soundCloudLinkController.text,
                              spotifyLink: _spotifyLinkController.text,
                              timestamp: _dateToPostController);
                          createResources(resource);
                          Navigator.pop(context);
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
            contentPadding: EdgeInsets.symmetric(
              horizontal: 12.0,
              vertical: 16.0,
            ),
          );
        },
        child: FaIcon(
          FontAwesomeIcons.plus,
          color: Colors.white,
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 20.0,
          vertical: 36.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            CustomDropdownButton2(
                buttonDecoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      6.0,
                    ),
                    border: Border.all(width: 1.0, color: Colors.black87)),
                dropdownDecoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    4.0,
                  ),
                ),
                hint: "Select Leader",
                value: selectLeaderAcademic,
                dropdownItems: selectLeader,
                onChanged: (value) {
                  setState(() {
                    selectLeaderAcademic = value!;
                  });
                }),
            SizedBox(
              height: 45,
            ),
            //below code need to be added preferable to a listview
            Expanded(
              child: Container(
                child: StreamBuilder<List<ResourcesModel>>(
                  stream: readResources(),
                  builder: (context, snapshot) {
                    if (snapshot.hasError) {
                      return Text('Something went wrong! ${snapshot.error}');
                    } else if (snapshot.hasData) {
                      final resource = snapshot.data!;
                      return ListView(
                        children: resource.map(buildContainer).toList(),
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
          ],
        ),
      ),
    );
  }
}

Future<void> createResources(ResourcesModel resource) async {
  final docUser = FirebaseFirestore.instance.collection('resources').doc();
  resource.id = docUser.id;
  final json = resource.toJson();
  await docUser.set(json);
}

Stream<List<ResourcesModel>> readResources() => FirebaseFirestore.instance
    .collection('resources')
    .where('academic', isEqualTo: selectLeaderAcademic)
    .where(
      'userID',
      isEqualTo: getCurrentUser(),
    )
    .snapshots()
    .map((snapshot) => snapshot.docs
        .map((doc) => ResourcesModel.fromJson(doc.data()))
        .toList());

Future<void> deleteResources(ResourcesModel resource) async {
  await FirebaseFirestore.instance
      .collection('resources')
      .doc(resource.id)
      .delete();
}

Widget buildContainer(ResourcesModel resource) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
    margin: EdgeInsets.only(bottom: 16.0),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(
        6.0,
      ),
      color: Colors.grey.withOpacity(.1),
    ),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                child: resource.youtubeLink != ''
                    ? Image(image: AssetImage('Images/icons/youtube.png'))
                    : resource.soundCloudLink != ''
                        ? Image(image: AssetImage('Images/icons/sound.png'))
                        : resource.spotifyLink != ''
                            ? Image(
                                image: AssetImage('Images/icons/spotify.png'))
                            : null),
            SizedBox(
              width: 12.0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  resource.title,
                  style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87),
                ),
                Text(
                  resource.description,
                  style: TextStyle(
                      fontSize: 12.0,
                      fontWeight: FontWeight.w300,
                      color: Colors.black87),
                ),
              ],
            ),
          ],
        ),
        GestureDetector(
          onTap: () {
            deleteResources(resource);
          },
          child: Icon(
            Icons.delete_rounded,
            size: 20.0,
            color: Colors.black54,
          ),
        ),
      ],
    ),
  );
}
