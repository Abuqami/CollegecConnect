import 'package:flutter/material.dart';

class PrefRow extends StatelessWidget {
  const PrefRow({
    Key? key,
    required this.isPixel3,
    required this.isAndoridsmall,
  }) : super(key: key);

  final bool isPixel3;
  final bool isAndoridsmall;

  @override
  Widget build(BuildContext context) {
    // ignore: non_constant_identifier_names
    final IsPixel6 = MediaQuery
        .of(context)
        .size
        .height > 820;
    return Row(
      children: [
        IsPixel6
            ? SizedBox(
          width: 25,
        )
            : isPixel3
            ? SizedBox(
          width: 10,
        )
            : isAndoridsmall
            ? SizedBox(width: 30)
            : SizedBox(
          width: 25,
        ),
        GestureDetector(
          child: Image.asset(
            'Images/Select.png',
            width: 80,
            height: 110,
          ),
        ),
        SizedBox(
          width: 10,
        ),
        GestureDetector(
          child: Image.asset(
            'Images/Today.png',
            width: 60,
            height: 60,
          ),
        ),
        SizedBox(
          width: 10,
        ),
        GestureDetector(
          child: Image.asset(
            'Images/Yesterday.png',
            width: 80,
            height: 90,
          ),
        ),
        SizedBox(
          width: 10,
        ),
        GestureDetector(
          child: Image.asset(
            'Images/Weekago.png',
            width: 80,
            height: 120,
          ),
        ),
        SizedBox(
          width: 10,
        ),
        GestureDetector(
          child: Image.asset(
            'Images/Selection.png',
            width: 20,
            height: 20,
          ),
        ),
      ],
    );
  }
}
