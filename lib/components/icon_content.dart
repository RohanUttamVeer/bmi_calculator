import 'package:flutter/material.dart';
import '../const.dart';

class LabelWidget extends StatelessWidget {
  LabelWidget({this.gender, this.genderIcon});
  final String? gender;
  final IconData? genderIcon;

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
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            gender!,
            style: kStyledText,
          ),
        ),
      ],
    );
  }
}
