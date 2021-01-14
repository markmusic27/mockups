import 'package:flutter/material.dart';
import 'package:mockups/utils/constants.dart';

class Subheader extends StatefulWidget {
  @override
  _SubheaderState createState() => _SubheaderState();
}

class _SubheaderState extends State<Subheader> {
  Shader linearGradient;

  @override
  void initState() {
    linearGradient = LinearGradient(
      colors: <Color>[Color(0xff1583EC), Color(0xff26DDD8)],
    ).createShader(
      Rect.fromLTWH(0.0, 0.0, 200.0, 70.0),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      textBaseline: TextBaseline.alphabetic,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.baseline,
      children: [
        SelectableText('An online repository of ', style: kSubheader),
        SelectableText(
          '4k',
          style: kSubheader.copyWith(
            foreground: Paint()..shader = linearGradient,
          ),
        ),
        SelectableText(' device mockups.', style: kSubheader),
      ],
    );
  }
}
