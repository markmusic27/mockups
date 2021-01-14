import 'package:flutter/material.dart';
import 'package:mockups/widgets/subheader.ui.dart';

class HeaderWithSubheader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Shader linearGradient = LinearGradient(
      colors: <Color>[Color(0xff1583EC), Color(0xff26DDD8)],
      begin: Alignment.centerLeft,
      end: Alignment.centerRight,
    ).createShader(Rect.fromLTWH(0.0, 0.0, 500.0, 500.0));
    return Container(
      child: Column(
        children: [
          SelectableText(
            'mockups.li',
            style: TextStyle(
              fontFamily: 'Inter',
              foreground: Paint()..shader = linearGradient,
              fontSize: 60,
              fontWeight: FontWeight.w800,
            ),
          ),
          SizedBox(height: 20),
          Subheader()
        ],
      ),
    );
  }
}
