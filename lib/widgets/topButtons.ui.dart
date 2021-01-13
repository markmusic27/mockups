import 'package:flutter/material.dart';
import 'package:mockups/widgets/topIconWthText.ui.dart';

class TopButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          TopIconWithText(type: Type.overlay),
          SizedBox(width: 45),
          TopIconWithText(type: Type.octocat),
        ],
      ),
    );
  }
}
