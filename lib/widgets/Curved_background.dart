import 'package:flutter/material.dart';


class curved_background extends StatelessWidget {
 curved_background({this.title});

 final String? title;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 90,
        left: 60,
        right: 60,
        bottom: 50,
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children:  [
            Text(
              "$title",
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}