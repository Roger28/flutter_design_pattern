import 'package:flutter/material.dart';

import '../model/patterns.dart';

class PatternPage extends StatelessWidget {
  static const String routeName = '/pattern_page';

  @override
  Widget build(BuildContext context) {
    final Patterns args = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Text(args.name),
      ),
      body: args.widget,
    );
  }
}
