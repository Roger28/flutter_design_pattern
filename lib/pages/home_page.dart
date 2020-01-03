import 'package:dart_design_pattern/universal/custom_drawer.dart';
import 'package:flutter/material.dart';

import '../model/build_patterns.dart';
import '../universal/utils.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  static const String routeName = '/';

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        drawer: CustomDrawer(),
        appBar: AppBar(
          elevation: 0.0,
          bottom: TabBar(
            tabs: [
              Tab(text: 'Creational'),
              Tab(text: 'Structural'),
              Tab(text: 'Behavioural'),
            ],
          ),
          title: Text('Design Patterns in Dart'),
          centerTitle: true,
        ),
        body: TabBarView(
          children: [
            BuildPatterns(Utils.buildSCreationalList(), 0),
            BuildPatterns(Utils.buildStructuralList(), 1),
            BuildPatterns(Utils.buildBehaviouralList(), 2),
          ],
        ),
      ),
    );
  }
}
