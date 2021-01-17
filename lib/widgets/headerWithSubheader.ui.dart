import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mockups/services/mapGradient.service.dart';
import 'package:mockups/state/imageCount.store.dart';
import 'package:mockups/widgets/subheader.ui.dart';
import 'package:provider/provider.dart';

class HeaderWithSubheader extends StatefulWidget {
  @override
  _HeaderWithSubheaderState createState() => _HeaderWithSubheaderState();
}

class _HeaderWithSubheaderState extends State<HeaderWithSubheader>
    with TickerProviderStateMixin {
  AnimationController controller;
  Animation animation1;
  Animation animation2;

  List<Color> colors;
  void animate(int currentImage) {
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
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final imageCountStore = Provider.of<ImageCountStore>(context);
    return Container(
      child: Column(
        children: [
          Observer(
            builder: (_) {
              animate(imageCountStore.imageCount);
              return SelectableText(
                'mockups.li',
                style: TextStyle(
                  fontFamily: 'Inter',
                  foreground: Paint()
                    ..shader = LinearGradient(
                      colors: colors ?? MapGradient.generateColors(2),
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                    ).createShader(Rect.fromLTWH(0.0, 0.0, 500.0, 500.0)),
                  fontSize: 60,
                  fontWeight: FontWeight.w800,
                ),
              );
            },
          ),
          SizedBox(height: 20),
          Subheader(),
        ],
      ),
    );
  }
}
