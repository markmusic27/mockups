import 'package:flutter/material.dart';
import 'package:mockups/services/mapGradient.service.dart';
import 'package:mockups/widgets/subheader.ui.dart';

class HeaderWithSubheader extends StatefulWidget {
  @override
  _HeaderWithSubheaderState createState() => _HeaderWithSubheaderState();
}

class _HeaderWithSubheaderState extends State<HeaderWithSubheader>
    with TickerProviderStateMixin {
  AnimationController controller;
  Animation animation1;
  Animation animation2;
  int currentImage = 3;
  List<Color> colors;
  void animate() {
    List<Color> fromPointer = MapGradient.generateColors(currentImage);
    List<Color> toPointer = MapGradient.generateColors(currentImage - 1);

    controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 1000),
    );

    animation1 = ColorTween(begin: fromPointer[0], end: toPointer[0])
        .animate(controller);
    animation2 = ColorTween(begin: fromPointer[1], end: toPointer[1])
        .animate(controller);

    controller.forward(from: 0);

    controller.addListener(() {
      setState(() {
        colors = <Color>[animation1.value, animation2.value];
      });
    });
  }

  @override
  void initState() {
    animate();
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
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
                  colors: colors ?? MapGradient.generateColors(currentImage),
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
