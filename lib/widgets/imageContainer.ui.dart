import 'package:flutter/material.dart';
import 'package:mockups/services/image.service.dart';

class ImageContainer extends StatelessWidget {
  final int index;

  ImageContainer({this.index});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        ImageService().download(index);
      },
      child: Container(
        padding: EdgeInsets.all(20),
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.grey[900],
          image: DecorationImage(
            image: ImageService.display(index + 1),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}
