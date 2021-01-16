import 'package:flutter/material.dart';
import 'package:mockups/pages/homePage.dart';
import 'package:mockups/utils/constants.dart';

void main() {
  runApp(MockupsApp());
}

class MockupsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: TextTheme(
          headline1: kDefaultTextTheme,
        ),
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: HomePage.id,
      routes: {
        HomePage.id: (context) => HomePage(),
      },
    );
  }
}
