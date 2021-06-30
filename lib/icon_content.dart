import 'package:flutter/material.dart';

class LabelWidget extends StatelessWidget {
  LabelWidget({required this.gender, required this.genderIcon});
  final String gender;
  final IconData genderIcon;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          genderIcon,
          size: 90,
          color: Color(0xff8d8e98),
        ),
        Text(
          gender,
          style: TextStyle(color: Color(0xff8d8e98)),
        ),
      ],
    );
  }
}
