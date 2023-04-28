import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collegeconnect/widgets/mentor_model.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

Color mainClr = const Color(0x29F8DCAC), green = const Color(0xFF189D8C);

class ContactMentors extends StatefulWidget {
  @override
  State<ContactMentors> createState() => _ContactMentorsState();
}

class _ContactMentorsState extends State<ContactMentors> {
  late final _fullNameController = TextEditingController();
  late final _specialization;
  late final _whatsappLinkController = TextEditingController();
  late final _twitterLinkController = TextEditingController();

  List<String> specialization = [
    'CIS',
    'AI',
    'CYS',
    'CS',
  ];

  String? selectSpecialization = 'CIS';

  String _searchQuery = '';

  void _updateSearchQuery(String newQuery) {
    setState(() {
      _searchQuery = newQuery;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 16.0,
            vertical: 32.0,
          ),
          child: Column(
            children: [
              Container(
                height: 48.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    6.0,
                  ),
                  color: Colors.grey.withOpacity(
                    .1,
                  ),
                ),
                child: TextField(
                  onChanged: _updateSearchQuery,
                  decoration: InputDecoration(
                    hintText: 'Search for Mentor',
                    hintStyle: const TextStyle(
                      fontSize: 10.0,
                      fontStyle: FontStyle.italic,
                    ),
                    border: InputBorder.none,
                    prefixIcon: const Icon(
                      Icons.search,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 16.0,
              ),
              GestureDetector(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      scrollable: true,
                      content: SingleChildScrollView(
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 12.0,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                  6.0,
                                ),
                                color: Colors.grey.withOpacity(
                                  .1,
                                ),
                              ),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: TextField(
                                      controller: _fullNameController,
                                      keyboardType: TextInputType.text,
                                      decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: 'Full Name',
                                        hintStyle: TextStyle(
                                          fontSize: 10.0,
                                          fontStyle: FontStyle.italic,
                                          color: Colors.grey.withOpacity(
                                            .5,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Icon(
                                    Icons.person,
                                    size: 16.0,
                                    color: Colors.black54,
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 6.0,
                            ),
                            Container(
                              padding: EdgeInsets.only(
                                left: 12.0,
                                right: 6.0,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                  6.0,
                                ),
                                color: Colors.grey.withOpacity(
                                  .1,
                                ),
                              ),
                              child: DropdownButtonFormField<String>(
                                decoration:
                                    InputDecoration(border: InputBorder.none),
                                value: selectSpecialization,
                                items: specialization
                                    .map((e) => DropdownMenuItem<String>(
                                        value: e,
                                        child: Text(
                                          e,
                                          style: TextStyle(
                                            fontSize: 12.0,
                                          ),
                                        )))
                                    .toList(),
                                onChanged: (e) => setState(() {
                                  selectSpecialization = e;
                                  _specialization = selectSpecialization;
                                }),
                              ),
                            ),
                            SizedBox(
                              height: 6.0,
                            ),
                            SizedBox(
                              height: 6.0,
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 12.0,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                  6.0,
                                ),
                                color: Colors.grey.withOpacity(
                                  .1,
                                ),
                              ),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: TextField(
                                      controller: _whatsappLinkController,
                                      keyboardType: TextInputType.text,
                                      decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: 'Number Phone Whatsapp',
                                        hintStyle: TextStyle(
                                          fontSize: 10.0,
                                          fontStyle: FontStyle.italic,
                                          color: Colors.grey.withOpacity(
                                            .5,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Image.asset(
                                    'Images/icons/whatsapp.png',
                                    width: 16.0,
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 6.0,
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 12.0,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                  6.0,
                                ),
                                color: Colors.grey.withOpacity(
                                  .1,
                                ),
                              ),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: TextField(
                                      controller: _twitterLinkController,
                                      keyboardType: TextInputType.text,
                                      decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: 'Twitter Account',
                                        hintStyle: TextStyle(
                                          fontSize: 10.0,
                                          fontStyle: FontStyle.italic,
                                          color: Colors.grey.withOpacity(
                                            .5,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Image.asset(
                                    'Images/icons/twitter.png',
                                    width: 16.0,
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 24.0,
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.black87,
                                elevation: 0.0,
                                fixedSize: Size(
                                  double.maxFinite,
                                  48.0,
                                ),
                              ),
                              onPressed: () {
                                final mentor = MentorModel(
                                  fullName: _fullNameController.text,
                                  specialization: _specialization,
                                  whatsappLink: _whatsappLinkController.text,
                                  twitterLink: _twitterLinkController.text,
                                );
                                createWorker(mentor);
                              },
                              child: Text(
                                'Add & Save',
                                style: TextStyle(
                                  fontSize: 12.0,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 16.0,
                    vertical: 12.0,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    color: mainClr,
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'Join As Mentor',
                                style: TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'Be a role model for other students by helping them\nwith their academic questions',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  fontSize: 10.0,
                                ),
                              ),
                            ],
                          ),
                          Icon(
                            Icons.arrow_forward,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Expanded(
                child: StreamBuilder<List<MentorModel>>(
                  stream: readUsers(),
                  builder: (context, snapshot) {
                    if (snapshot.hasError) {
                      return Text('Something went wrong! ${snapshot.error}');
                    } else if (snapshot.hasData) {
                      final mentor = snapshot.data!;
                      return ListView(
                        children: mentor.map(buildUser).toList(),
                      );
                    } else {
                      return Center(
                        child: CircularProgressIndicator(),
                      );
                    }
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> createWorker(MentorModel mentor) async {
    final docUser = FirebaseFirestore.instance.collection('mentors').doc();
    mentor.id = docUser.id;
    final json = mentor.toJson();
    await docUser.set(json);
  }

  Stream<List<MentorModel>> readUsers() => FirebaseFirestore.instance
      .collection('mentors')
      .where('full name', isGreaterThanOrEqualTo: _searchQuery)
      .where('full name', isLessThan: _searchQuery + 'z')
      .snapshots()
      .map((snapshot) => snapshot.docs
          .map((doc) => MentorModel.fromJson(doc.data()))
          .toList());

  Widget buildUser(MentorModel mentorCard) {
    final Uri _urlWhatsapp =
        Uri.parse('https://wa.me/${_whatsappLinkController.text}');
    final Uri _urlTwitter =
        Uri.parse('https://twitter.com/${_twitterLinkController.text}');

    Future<void> _launchUrl(Uri uri) async {
      if (!await launchUrl(uri)) {
        throw Exception('Could not launch $uri');
      }
    }

    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16.0,
        vertical: 12.0,
      ),
      margin: EdgeInsets.only(
        bottom: 12.0,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        color: mainClr,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 20.0,
                width: 20.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    width: 1.0,
                    color: green,
                  ),
                ),
                child: Icon(
                  Icons.person_outline,
                  size: 15.0,
                  color: Colors.black87,
                ),
              ),
              SizedBox(width: 10.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    mentorCard.fullName,
                    style: TextStyle(
                      fontSize: 14.0,
                      color: Colors.black87,
                    ),
                  ),
                  Text(
                    '@${mentorCard.fullName}',
                    style: TextStyle(
                      fontWeight: FontWeight.w200,
                      color: Colors.blueAccent,
                      fontSize: 10.0,
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 5.0),
          Row(
            children: [
              Icon(
                Icons.shopping_bag_outlined,
                size: 16.0,
              ),
              const SizedBox(
                width: 10.0,
              ),
              Text(
                mentorCard.specialization.toUpperCase(),
                style: TextStyle(
                  fontSize: 10.0,
                  color: Colors.black87,
                ),
              ),
            ],
          ),
          const SizedBox(height: 5.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              GestureDetector(
                onTap: () {
                  _launchUrl(_urlWhatsapp);
                },
                child: Image.asset(
                  'Images/icons/whatsapp.png',
                  width: 16.0,
                ),
              ),
              SizedBox(
                width: 12.0,
              ),
              GestureDetector(
                onTap: () {
                  _launchUrl(_urlTwitter);
                },
                child: Image.asset(
                  'Images/icons/twitter.png',
                  width: 16.0,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
