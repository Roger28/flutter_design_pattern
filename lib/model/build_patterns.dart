import 'package:flutter/material.dart';

import 'patterns.dart';
import '../pages/pattern_page.dart';
import '../universal/utils.dart';

class BuildPatterns extends StatelessWidget {
  final List<Patterns> patterns;
  final int tabIndex;

  const BuildPatterns(this.patterns, this.tabIndex);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 8.0),
      child: ListView.builder(
          physics: BouncingScrollPhysics(),
          itemCount: this.patterns.length,
          itemBuilder: (context, i) {
            return Column(
              children: <Widget>[
                ListTile(
                  onTap: () {
                    Navigator.pushNamed(context, PatternPage.routeName,
                        arguments: this.patterns[i]);
                  },
                  leading: CircleAvatar(
                    child: Text(this.patterns[i].abv),
                    backgroundColor: Utils.getColor(tabIndex),
                  ),
                  title: Text(patterns[i].name),
                ),
                Divider(),
              ],
            );
          }),
    );
  }
}
