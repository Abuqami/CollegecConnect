import 'package:collegeconnect/screens/amdin_page.dart';
import 'package:collegeconnect/screens/navigation_pages.dart';
import 'package:collegeconnect/utilities/Extension.dart';
import 'package:collegeconnect/utilities/constants.dart';
import 'package:collegeconnect/widgets/Buttons/MainPagesSubmitButton.dart';
import 'package:collegeconnect/widgets/CollegeConnect_TextFormField.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  Future<String?> _getEmailFromUser() async {
    String email = '';

    return showDialog<String>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Forgot password'),
          content: TextField(
            onChanged: (value) => email = value,
            decoration: InputDecoration(hintText: 'Enter your email'),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text('Cancel'),
            ),
            ElevatedButton(
              onPressed: () => Navigator.pop(context, email),
              child: Text('Reset password'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 32.0, vertical: 24.0),
        child: Column(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Login",
                    style: kApplicationTitleStyle,
                  ),
                  SizedBox(
                    height: 36.0,
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          CollegeConnectTextFormField(
                            textFieldController: _emailController,
                            label: 'Email',
                            hintText: 'example@gmail.com',
                            validator: (v) {
                              if (!v!.contains('@')) {
                                return 'Please enter your email as follows: example@gmail.com';
                              }
                              return null;
                            },
                            minLength: 22,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          CollegeConnectTextFormField(
                            textFieldController: _passwordController,
                            label: 'Password',
                            formObsecureText: true,
                            validator: (v) {
                              if (v!.isValidPassword) {
                                return "Minimum eight characters, at least one uppercase letter, one lowercase letter\none number and one special character";
                              }
                              return null;
                            },
                          ),
                          SizedBox(
                            height: 6.0,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 2.0,
                              ),
                              GestureDetector(
                                onTap: () async {
                                  String? email = await _getEmailFromUser();
                                  if (email != null) {
                                    try {
                                      await FirebaseAuth.instance
                                          .sendPasswordResetEmail(email: email);
                                      // ignore: use_build_context_synchronously
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        SnackBar(
                                            content: Text(
                                                'Password reset email sent.')),
                                      );
                                    } on FirebaseAuthException catch (e) {
                                      // ignore: use_build_context_synchronously
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        SnackBar(
                                            content: Text(
                                                'Failed to send password reset email: ${e.message}')),
                                      );
                                    }
                                  }
                                },
                                child: Text(
                                  'Forgot Password?',
                                  style: TextStyle(
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.w600,
                                    decoration: TextDecoration.underline,
                                    fontStyle: FontStyle.italic,
                                    color: Colors.deepPurple,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 48.0,
                          ),
                          MainPagesSubmitButton(
                            formKey: _formKey,
                            buttonText: 'Login',
                            onTap: () async {
                              if (_formKey.currentState!.validate()) {
                                try {
                                  await FirebaseAuth.instance
                                      .signInWithEmailAndPassword(
                                    email: _emailController.text,
                                    password: _passwordController.text,
                                  );
                                  if (_emailController.text ==
                                      'admin@gmail.com') {
                                    Get.to(
                                      AdminPage(),
                                    );
                                  } else {
                                    Get.to(
                                      NavigationPage(),
                                    );
                                  }
                                } catch (e) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text(
                                          'Email or Password Not Correct, Please try Again'),
                                    ),
                                  );
                                }
                              }
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Do not have an account?',
                  style: TextStyle(
                    fontSize: 12.0,
                    color: Colors.deepPurple,
                  ),
                ),
                SizedBox(
                  width: 6.0,
                ),
                GestureDetector(
                  child: Text(
                    'Create new account',
                    style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.w600,
                      color: Colors.deepPurple,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
