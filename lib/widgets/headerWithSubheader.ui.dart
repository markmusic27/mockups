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
  int pointer = 0;

  List<Color> colors = MapGradient.generateColors(1);
  void animate(int currentImage) {
    List<Color> fromPointer = MapGradient.generateColors(currentImage);
    List<Color> toPointer = MapGradient.generateColors(currentImage + 1);

    controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 200),
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
              if (pointer != imageCountStore.imageCount) {
                animate(imageCountStore.imageCount);
              }

              pointer = imageCountStore.imageCount;

              return SelectableText(
                'mockups.li',
                style: TextStyle(
                  fontFamily: 'Inter',
                  color: colors[1],
                  fontSize: 60,
                  fontWeight: FontWeight.w700,
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
