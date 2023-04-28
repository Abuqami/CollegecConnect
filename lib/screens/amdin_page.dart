import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collegeconnect/coordinators_from_admin_model.dart';
import 'package:collegeconnect/screens/community_page.dart';
import 'package:collegeconnect/screens/home_page.dart';
import 'package:collegeconnect/screens/list_coordinators_page.dart';
import 'package:collegeconnect/screens/login_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class AdminPage extends StatefulWidget {
  const AdminPage({Key? key}) : super(key: key);

  @override
  State<AdminPage> createState() => _AdminPageState();
}

class _AdminPageState extends State<AdminPage> {
  @override
  Widget build(BuildContext context) {
    final emailController = TextEditingController();
    final passwordController = TextEditingController();
    DateTime dateToPostController = DateTime.now();
    String formattedDate =
        DateFormat('MMM dd, HH:mm').format(dateToPostController);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.black87),
        leading: IconButton(
          onPressed: () {
            FirebaseAuth.instance.signOut();
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => LoginPage(),
              ),
            );
          },
          icon: Icon(
            Icons.logout_rounded,
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 36.0),
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundColor: Colors.indigo,
              radius: 40.0,
            ),
            SizedBox(
              height: 12.0,
            ),
            Text(
              'Abdulrahman Albaqami',
            ),
            SizedBox(
              height: 48.0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ListCoordinatorsPage(),
                          ),
                        );
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(
                            vertical: 24.0, horizontal: 18.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            8.0,
                          ),
                          color: Colors.grey.withOpacity(
                            .1,
                          ),
                        ),
                        child: Column(
                          children: const [
                            Icon(
                              Icons.person,
                            ),
                            SizedBox(
                              height: 6.0,
                            ),
                            Text('List Coordinators'),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HomePage(),
                          ),
                        );
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(
                            vertical: 24.0, horizontal: 18.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            8.0,
                          ),
                          color: Colors.grey.withOpacity(
                            .1,
                          ),
                        ),
                        child: Column(
                          children: const [
                            Icon(
                              Icons.person_pin_rounded,
                            ),
                            SizedBox(
                              height: 6.0,
                            ),
                            Text('Activities Coordinators'),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 16.0,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CommunityPage(),
                      ),
                    );
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 24.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        8.0,
                      ),
                      color: Colors.grey.withOpacity(
                        .1,
                      ),
                    ),
                    child: Column(
                      children: const [
                        Icon(
                          Icons.mark_unread_chat_alt_rounded,
                        ),
                        SizedBox(
                          height: 6.0,
                        ),
                        Text('User issues'),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.deepPurple,
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) => AlertDialog(
              title: Center(
                  child: Text(
                'Create a Coordinator Account',
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
                              controller: emailController,
                              keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'email address',
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
                            Icons.mail_rounded,
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
                              controller: passwordController,
                              keyboardType: TextInputType.visiblePassword,
                              obscureText: false,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'password',
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
                            Icons.lock_rounded,
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
                        try {
                          await FirebaseAuth.instance
                              .createUserWithEmailAndPassword(
                            email: emailController.text,
                            password: passwordController.text,
                          );
                          final coordinators = CoordinatorsFromAdminModel(
                              emailAddress: emailController.text,
                              timestamp: formattedDate);
                          createCoordinatorsList(coordinators);
                          // ignore: use_build_context_synchronously
                          Navigator.pop(context);
                          // ignore: empty_catches
                        } catch (e) {}
                      },
                      child: Text(
                        'Add Coordinator',
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
        child: Icon(Icons.person_add_alt_1_rounded),
      ),
    );
  }
}

Future<void> createCoordinatorsList(
    CoordinatorsFromAdminModel coordinator) async {
  final docUser =
      FirebaseFirestore.instance.collection('coordinators_from_admin').doc();
  final json = coordinator.toJson();
  coordinator.id = docUser.id;
  await docUser.set(json);
}
