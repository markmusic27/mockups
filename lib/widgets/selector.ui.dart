import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:mockups/services/image.service.dart';
import 'package:mockups/state/imageCount.store.dart';
import 'package:mockups/widgets/imageContainer.ui.dart';
import 'package:provider/provider.dart';

class Selector extends StatefulWidget {
  @override
  _SelectorState createState() => _SelectorState();
}

class _SelectorState extends State<Selector> {
  @override
  Widget build(BuildContext context) {
    final imageCountStore = Provider.of<ImageCountStore>(context);
    ImageService imageService = ImageService();
    return Expanded(
      child: Container(
        padding: EdgeInsets.only(bottom: 20),
        child: Swiper(
          control: SwiperControl(
            onTap: () {
              imageCountStore.increase();
            },
            size: 30,
            iconNext: Icons.arrow_forward_ios_rounded,
            iconPrevious: Icons.arrow_back_ios_rounded,
            padding: EdgeInsets.all(30),
            color: Colors.white,
          ),
          itemBuilder: (BuildContext context, int i) =>
              ImageContainer(index: i),
          itemCount: imageService.length,
          viewportFraction: 0.8,
          scale: 0.9,
        ),
      ),
    );
  }
}
