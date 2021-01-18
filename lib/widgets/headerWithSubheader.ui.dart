import 'package:flutter/material.dart';
import 'package:mockups/utils/constants.dart';
import 'package:mockups/widgets/subheader.ui.dart';

class HeaderWithSubheader extends StatefulWidget {
  @override
  _HeaderWithSubheaderState createState() => _HeaderWithSubheaderState();
}

class _HeaderWithSubheaderState extends State<HeaderWithSubheader> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            'mockups.li',
            style: TextStyle(
              fontFamily: 'Inter',
              color: kTextColor,
              fontSize: 60,
              fontWeight: FontWeight.w800,
            ),
          ),
          SizedBox(height: 20),
          Subheader(),
        ],
      ),
    );
  }
}
