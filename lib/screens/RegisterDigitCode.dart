import 'package:collegeconnect/screens/Login.dart';
import 'package:collegeconnect/screens/MyApp3.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter/services.dart';
import 'package:collegeconnect/utilities/constants.dart';

import '../widgets/Buttons/landingPageButtons.dart';

class Enterdigit extends StatelessWidget {
  const Enterdigit({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isAndoridsmall = MediaQuery.of(context).size.height > 780;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        //main body

        child: Column(
          children: [
            Row(
              children: [
                GestureDetector(
                  onTap: () {},
                  child: Icon(
                    Icons.close,
                    size: 30,
                  ),
                ),
              ],
            ),
            isAndoridsmall
                ? Container(
                    child: Row(children: [
                      SizedBox(
                        width: 27,
                      ),
                      Image.asset(
                        'Images/dots.png',
                        width: 350,
                        height: 50,
                      ),
                    ]),
                  )
                : Container(
                    child: Row(children: [
                      SizedBox(
                        width: 25,
                      ),
                      Image.asset(
                        'Images/dots.png',
                        width: 350,
                        height: 50,
                      ),
                    ]),
                  ),
            Row(
              children: [
                SizedBox(
                  height: 70,
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                "We have already sent the 4 digit code to 2180000434@iau.edu.sa, please fill it in the form below",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 80,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Otpass(),
                Otpass(),
                Otpass(),
                Otpass(),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              child: Column(
                children: [
                  cont(
                      ktext: "Verify",
                      colour: Color(0xFFF9DDAC),
                      tap: () {
                        Get.to(Login());
                      }),
                ],
              ),
            ),
            isAndoridsmall
                ? SizedBox(
                    height: 60,
                  )
                : SizedBox(
                    height: 40,
                  ),
            Row(
              children: [
                isAndoridsmall
                    ? SizedBox(
                        height: 200,
                      )
                    : SizedBox(
                        height: 180,
                      ),
                Container(
                  margin: EdgeInsets.all(10),
                  alignment: Alignment.center,
                  child: GestureDetector(
                    onTap: () {
                      Get.to(MyApp3());
                    },
                    child: Image.asset(
                      'Images/Greenbutton.png',
                      width: 140,
                      height: 140,
                    ),
                  ),
                ),
              ],
            )
          ],
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
        style: Theme.of(context).textTheme.headline6,
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
