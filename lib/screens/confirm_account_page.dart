import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ConfirmAccountPage extends StatelessWidget {
  const ConfirmAccountPage({super.key});

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
      body: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 32.0,
        ),
        alignment: Alignment.center,
        child: Text(
          "Please Check Your MailBox To Confirm Your Account.",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 12.0, color: Colors.grey.withOpacity(.8)),
        ),
      ),
    );
  }
}

//This is the OTP field class
class Otpass extends StatelessWidget {
  const Otpass({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 70,
      height: 50,
      child: TextFormField(
        keyboardType: TextInputType.number,
        style: Theme.of(context).textTheme.titleLarge,
        textAlign: TextAlign.center,
        inputFormatters: [
          LengthLimitingTextInputFormatter(1),
          FilteringTextInputFormatter.digitsOnly
        ],
        //condition
        onChanged: (value) {
          if (value.length == 1) {
            FocusScope.of(context).nextFocus();
          }
          if (value.isEmpty) {
            FocusScope.of(context).previousFocus();
          }
        },
        decoration: const InputDecoration(
          enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Color.fromARGB(255, 88, 185, 169))),
          hintText: ('0'),
        ),
        onSaved: (value) {},
      ),
    );
  }
}
