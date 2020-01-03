import 'package:flutter/material.dart';

import 'pages/home_page.dart';
import 'pages/pattern_page.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Design Pattern with Dart',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'GoogleSans'
      ),
      initialRoute: HomePage.routeName,
      routes: {
        HomePage.routeName: (context) => HomePage(),
        PatternPage.routeName: (context) => PatternPage(),
      },
    );
  }
}
