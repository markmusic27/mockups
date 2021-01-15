import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:mockups/widgets/imageContainer.ui.dart';

class Selector extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.only(bottom: 20),
        child: Swiper(
          control: SwiperControl(
            onTap: () {},
            color: Colors.white,
          ),
          itemBuilder: (BuildContext context, int i) =>
              ImageContainer(index: i),
          itemCount: 10,
          viewportFraction: 0.8,
          scale: 0.9,
        ),
      ),
    );
  }
}
