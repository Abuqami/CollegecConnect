import 'package:collegeconnect/screens/Forgot_Password.dart';
import 'package:collegeconnect/screens/Homepage.dart';
import 'package:collegeconnect/screens/MyApp1.dart';
import 'package:collegeconnect/utilities/Extension.dart';
import 'package:collegeconnect/utilities/constants.dart';
import 'package:collegeconnect/widgets/Buttons/MainPagesSubmitButton.dart';
import 'package:collegeconnect/widgets/CollegeConnect_TextFormField.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../auth.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  void _signInWithEmailAndPassword() async {
    String email = _emailController.text;
    String password = _passwordController.text;
    UserCredential? userCredential =
        await Auth().signInWithEmailAndPassword(email, password);
    if (userCredential != null) {
      // Sign-in successful, navigate to the home screen
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => Homepage()));
    } else {
      // Sign-in failed, show an error message
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text('Sign-in failed')));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 32.0),
        child: Column(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Login",
                    style: k_Application_Title_Style,
                  ),
                  SizedBox(
                    height: 90,
                  ),
                  Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        CollegeConnect_TextFormField(
                          textFieldController: _emailController,
                          label: 'Email',
                          hintText: 'Example@iau.edu.sa',
                          validator: (value) {
                            if (value!.isValidEmail && value.isEmpty) {
                              return 'Please enter your email and it as follows: Example@iau.edu.sa';
                              return null;
                            }
                            return null;
                          },
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        CollegeConnect_TextFormField(
                          textFieldController: _passwordController,
                          label: 'Password',
                          formObsecureText: true,
                          validator: (value) {
                            if (value!.isValidPassword) {
                              return "Please enter your Password and Minimum 6 characters, at least one uppercase letter, one lowercase letter\none number and one special character";
                            }
                            return null;
                          },
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 2.0,
                            ),
                            GestureDetector(
                              onTap: () {
                                Get.to(
                                  () => ForgotPassword(),
                                );
                              },
                              child: loginPageTexts(
                                text: 'Forgot Password?',
                                fontsize: 12,
                                textDecoration: TextDecoration.underline,
                                textFontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        MainPagesSubmitButton(
                          formKey: _formKey,
                          buttonText: 'Login',
                          onTap: () {
                            if (_formKey.currentState!.validate()) {
                              _signInWithEmailAndPassword();
                            }
                          },
                          width: 235,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  loginPageTexts(
                    text: 'Do not have an account? ',
                  ),
                  loginPageTexts(
                    textFontWeight: FontWeight.bold,
                    text: 'Create new account',
                    textDecoration: TextDecoration.underline,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}

class loginPageTexts extends StatelessWidget {
  const loginPageTexts(
      {this.text, this.textFontWeight, this.textDecoration, this.fontsize});
  final String? text;
  final TextDecoration? textDecoration;
  final FontWeight? textFontWeight;
  final double? fontsize;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(MyApp1());
      },
      child: Text(
        "$text",
        style: TextStyle(
          fontWeight: textFontWeight,
          color: Color(0xFF199D8C),
          decoration: textDecoration,
          fontSize: fontsize,
        ),
      ),
    );
  }
}
