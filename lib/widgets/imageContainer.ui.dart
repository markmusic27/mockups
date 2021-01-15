import 'package:flutter/material.dart';

class ImageContainer extends StatelessWidget {
  final int index;

  ImageContainer({this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      color: Colors.green,
      child: Text(index.toString()),
    );
  }
}
