import 'package:flutter/material.dart';
import 'package:mockups/services/mapGradient.service.dart';
import 'package:mockups/utils/constants.dart';
import 'package:mockups/widgets/subheader.ui.dart';

class HeaderWithSubheader extends StatefulWidget {
  @override
  _HeaderWithSubheaderState createState() => _HeaderWithSubheaderState();
}

class _HeaderWithSubheaderState extends State<HeaderWithSubheader> {
  int currentPage = 0;
  @override
  void initState() {
    super.initState();
  }

  List<Color> generateColors() {
    int value;
    if (currentPage.toString().length == 1) {
      value = currentPage;
    } else {
      value = int.parse(currentPage.toString()[1]);
    }

    return MapGradient.map(value);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SelectableText(
            'mockups.li',
            style: TextStyle(
              fontFamily: 'Inter',
              foreground: Paint()
                ..shader = LinearGradient(
                  colors: generateColors(),
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                ).createShader(Rect.fromLTWH(0.0, 0.0, 500.0, 500.0)),
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
