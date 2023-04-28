import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// ignore: must_be_immutable
class DeleteUpdateButtons extends StatefulWidget {
  DeleteUpdateButtons({
    super.key,
    this.editOnTap,
    this.deleteOnTap,
  });

  void Function()? editOnTap;
  void Function()? deleteOnTap;

  @override
  State<DeleteUpdateButtons> createState() => _DeleteUpdateButtonsState();
}

class _DeleteUpdateButtonsState extends State<DeleteUpdateButtons> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: widget.editOnTap,
          child: FaIcon(
            FontAwesomeIcons.pen,
            size: 14.0,
          ),
        ),
        SizedBox(
          width: 20,
        ),
        GestureDetector(
          onTap: widget.deleteOnTap,
          child: FaIcon(
            // ignore: deprecated_member_use
            FontAwesomeIcons.remove,
            size: 18,
          ),
        ),
        SizedBox(
          width: 10,
        )
      ],
    );
  }
}
