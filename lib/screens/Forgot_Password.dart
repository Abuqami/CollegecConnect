import 'package:flutter/material.dart';
import 'package:collegeconnect/utilities/Extension.dart';
import 'package:collegeconnect/widgets/CollegeConnect_TextFormField.dart';
import 'package:collegeconnect/widgets/Buttons/MainPagesSubmitButton.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Forgot Password?",
              style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: EdgeInsets.all(16),
              child: Text(
                "You will receive a message with password recovery instructions in your Email",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(6.0),
              child: Form(
                key: formKey,
                child: CollegeConnect_TextFormField(
                  label: 'Email',
                  hintText: 'Example@iau.edu.sa',
                  validator: (val) {
                    if (!val!.isValidEmail) {
                      return 'Please enter your email as follows: Example@iau.edu.sa';
                    }
                    return null;
                  },
                  maxlength: 21,
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            MainPagesSubmitButton(
              formKey: formKey,
              buttonText: 'Send',
              width: 235,
              onTap: () {
                if (!formKey.currentState!.validate()) {
                } else {
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
