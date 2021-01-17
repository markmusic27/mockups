import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mockups/services/mapGradient.service.dart';
import 'package:mockups/state/imageCount.store.dart';
import 'package:mockups/utils/constants.dart';
import 'package:provider/provider.dart';

class Subheader extends StatefulWidget {
  @override
  _SubheaderState createState() => _SubheaderState();
}

class _SubheaderState extends State<Subheader> with TickerProviderStateMixin {
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
    return Row(
      textBaseline: TextBaseline.alphabetic,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.baseline,
      children: [
        SelectableText('An online repository of ', style: kSubheader),
        Observer(
          builder: (_) {
            if (pointer != imageCountStore.imageCount) {
              animate(imageCountStore.imageCount);
            }

            pointer = imageCountStore.imageCount;

            return SelectableText(
              '4k',
              style: kSubheader.copyWith(
                foreground: Paint()
                  ..shader = LinearGradient(
                    colors: colors,
                  ).createShader(
                    Rect.fromLTWH(0.0, 0.0, 200.0, 70.0),
                  ),
              ),
            );
          },
        ),
        SelectableText(' device mockups.', style: kSubheader),
      ],
    );
  }
}
