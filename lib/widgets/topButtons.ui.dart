import 'package:flutter/material.dart';
import 'package:mockups/widgets/topIconWthText.ui.dart';

class TopButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TopIconWithText(type: Type.octocat),
          SizedBox(width: 45),
          TopIconWithText(type: Type.octocat),
        ],
      ),
    );
  }
}
