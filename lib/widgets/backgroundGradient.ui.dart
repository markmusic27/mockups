import 'package:flutter/material.dart';
import 'package:mockups/utils/constants.dart';

class BackgroundGradient extends StatelessWidget {
  final Widget child;

  BackgroundGradient({this.child});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(gradient: kBackgroundGradient),
      child: child,
    );
  }
}