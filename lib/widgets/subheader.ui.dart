import 'package:flutter/material.dart';
import 'package:mockups/utils/constants.dart';

class Subheader extends StatefulWidget {
  @override
  _SubheaderState createState() => _SubheaderState();
}

class _SubheaderState extends State<Subheader> {
  @override
  Widget build(BuildContext context) {
    return Row(
      textBaseline: TextBaseline.alphabetic,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.baseline,
      children: [
        SelectableText(
          'An online repository of 4k mockups.',
          style: kSubheader.copyWith(
            color: kTextColor.withOpacity(0.8),
          ),
        ),
      ],
    );
  }
}
