import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
class backbutton extends StatelessWidget {
  const backbutton({this.size,
    Key? key,
  }) : super(key: key);
  final double? size;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.back();
      },
      child: Align(
        alignment: Alignment.topLeft,
        child: FaIcon(FontAwesomeIcons.arrowLeft,size: size ,),
      ),
    );
  }
}