import 'package:collegeconnect/screens/informations_second_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class InformationsFirstPage extends StatefulWidget {
  @override
  _InformationsFirstPageState createState() => _InformationsFirstPageState();
}

class _InformationsFirstPageState extends State<InformationsFirstPage> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  void _verifyEmail(BuildContext context) async {
    User? user = FirebaseAuth.instance.currentUser;
    if (user != null) {
      await user.sendEmailVerification();
      // ignore: use_build_context_synchronously
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Verification email sent'),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final isAndoridsmall = MediaQuery.of(context).size.height > 780;

    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          leading: BackButton(
            color: Colors.black87,
          )),
      body: SingleChildScrollView(
          child: Container(
        padding: EdgeInsets.symmetric(horizontal: 32.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 48.0),
            Container(
              alignment: Alignment.center,
              child: Image.asset(
                'Images/first.png',
              ),
            ),
            isAndoridsmall
                ? SizedBox(
                    height: 110,
                  )
                : SizedBox(
                    height: 60,
                  ),
            Text(
              "Enter Your Personal Information 1-2",
              style: GoogleFonts.quicksand(
                  fontSize: 16.0, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                    controller: _emailController,
                    style: TextStyle(fontSize: 15),
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Email',
                      labelStyle: TextStyle(
                        fontStyle: FontStyle.italic,
                        fontSize: 12.0,
                      ),
                      hintText: 'Example@gmail.com',
                      hintStyle: TextStyle(
                        fontSize: 12.0,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter your email';
                      } else if (!value.contains('@')) {
                        return 'Your email must contain the letter "@gmail.com"';
                      }
                    },
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            TextFormField(
              controller: _passwordController,
              obscureText: true,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Password',
                labelStyle: TextStyle(
                  fontStyle: FontStyle.italic,
                  fontSize: 12.0,
                ),
                hintText: '•••••••••••••••••••••',
                hintStyle: TextStyle(
                  fontSize: 12.0,
                  fontStyle: FontStyle.italic,
                ),
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter your password';
                } else if (value.length < 12) {
                  return 'The password must be 12 characters or more between letters and numbers';
                }
              },
            ),
            const SizedBox(
              height: 5,
            ),
            TextFormField(
              controller: _confirmPasswordController,
              obscureText: true,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Confirm Password',
                labelStyle: TextStyle(
                  fontStyle: FontStyle.italic,
                  fontSize: 12.0,
                ),
                hintText: '•••••••••••••••••••••',
                hintStyle: TextStyle(
                  fontSize: 12.0,
                  fontStyle: FontStyle.italic,
                ),
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please confirm your password';
                }
              },
            ),
            GestureDetector(
              onTap: () async {
                if (_confirmPasswordController.text !=
                    _passwordController.text) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Passwords do not match'),
                    ),
                  );
                } else if (_formKey.currentState!.validate()) {
                  try {
                    await FirebaseAuth.instance.createUserWithEmailAndPassword(
                      email: _emailController.text,
                      password: _passwordController.text,
                    );
                    // ignore: use_build_context_synchronously
                    _verifyEmail(context);
                    Get.to(
                      InformationsSecondPage(),
                    );
                  } catch (e) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(
                          'Please Wait when Upload Image',
                        ),
                      ),
                    );
                  }
                }
              },
              child: Container(
                margin: EdgeInsets.only(top: 62.0),
                width: double.maxFinite,
                height: 42.0,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xFFF9DDAC),
                ),
                padding: const EdgeInsets.all(8),
                // Change button text when light changes state.
                child: const Text(
                  'Next',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.black87,
                      fontSize: 14.0),
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
