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
      theme: _buildMyHomeTheme(),
      initialRoute: HomePage.routeName,
      routes: {
        HomePage.routeName: (context) => HomePage(),
        PatternPage.routeName: (context) => PatternPage(),
      },
    );
  }

  ThemeData _buildMyHomeTheme() {
    final ThemeData base = ThemeData.light();
    return base.copyWith(
      primaryColor: Colors.blue,
      scaffoldBackgroundColor: Colors.white,
      textTheme: _buildMyHomeTextTheme(base.textTheme),
      primaryTextTheme: _buildMyHomeTextTheme(base.primaryTextTheme),
      accentTextTheme: _buildMyHomeTextTheme(base.accentTextTheme),
    );
  }

  TextTheme _buildMyHomeTextTheme(TextTheme base) {
    return base
        .copyWith(
      headline: base.headline.copyWith(
        fontWeight: FontWeight.w500,
      ),
      title: base.title.copyWith(fontSize: 18.0),
      caption: base.caption.copyWith(
        fontWeight: FontWeight.w400,
        fontSize: 14.0,
      ),
      body2: base.body2.copyWith(
        fontWeight: FontWeight.w500,
        fontSize: 16.0,
      ),
    )
        .apply(
      fontFamily: 'GoogleSans',
    );
  }
}
