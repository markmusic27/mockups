import 'package:flutter/material.dart';
import 'package:mockups/utils/constants.dart';
import 'package:mockups/widgets/headers.ui.dart';
import 'package:mockups/widgets/selector.ui.dart';

class HomePage extends StatefulWidget {
  static String id = 'home_page';
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Headers(),
          Selector(),
        ],
      ),
    );
  }
}
