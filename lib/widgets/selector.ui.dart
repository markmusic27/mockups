import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class Selector extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: Swiper(
          itemBuilder: (BuildContext context, int index) {
            return Container(
              height: double.infinity,
              width: double.infinity,
              color: Colors.green,
              child: Text(index.toString()),
            );
          },
          itemCount: 10,
          viewportFraction: 0.8,
          scale: 0.9,
        ),
      ),
    );
  }
}
