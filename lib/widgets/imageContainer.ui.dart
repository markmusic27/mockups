import 'package:flutter/material.dart';

class ImageContainer extends StatelessWidget {
  final int index;

  ImageContainer({this.index});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print(index);
      },
      child: Container(
        padding: EdgeInsets.all(20),
        height: double.infinity,
        width: double.infinity,
        child: Text(index.toString()),
        decoration: BoxDecoration(
          color: Colors.green,
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}
