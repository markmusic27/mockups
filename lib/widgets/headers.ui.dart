import 'package:flutter/material.dart';
import 'package:mockups/widgets/headerWithSubheader.ui.dart';
import 'package:mockups/widgets/topButtons.ui.dart';

class Headers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      height: 250,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TopButtons(),
          HeaderWithSubheader(),
          SizedBox(),
        ],
      ),
    );
  }
}
