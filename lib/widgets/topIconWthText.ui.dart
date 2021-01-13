import 'package:flutter/material.dart';
import 'package:mockups/utils/constants.dart';
import 'package:url_launcher/url_launcher.dart';

enum Type { octocat, overlay }

class TopIconWithText extends StatelessWidget {
  final Type type;

  TopIconWithText({this.type});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        launch(
          type == Type.octocat
              ? 'https://github.com/markmusic2727/mockups'
              : 'https://github.com/markmusic2727/mockups/blob/main/README.md',
        );
      },
      child: Container(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/${type == Type.octocat ? 'octocat' : 'fullscreen'}.png',
              height: 23,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              type == Type.octocat ? 'GitHub' : 'Overlay UI',
              style: TextStyle(
                color: kTextColor,
                fontFamily: 'Inter',
                fontSize: 17,
              ),
            )
          ],
        ),
      ),
    );
  }
}
