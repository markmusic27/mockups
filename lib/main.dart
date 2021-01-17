import 'package:flutter/material.dart';
import 'package:mockups/pages/homePage.dart';
import 'package:mockups/state/imageCount.store.dart';
import 'package:mockups/utils/constants.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MockupsApp());
}

class MockupsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(
          create: (_) => ImageCountStore(),
        )
      ],
      child: MaterialApp(
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
      ),
    );
  }
}
