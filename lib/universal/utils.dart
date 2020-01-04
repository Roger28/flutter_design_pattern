import 'package:dart_design_pattern/widgets/index.dart';
import 'package:flutter/material.dart';

import '../model/patterns.dart';

class Utils {
  static Color getColor(int index) {
    switch (index) {
      case 0:
        return Colors.red;
      case 1:
        return Colors.blue;
      default:
        return Colors.green;
    }
  }

  static List<Patterns> buildCreationalList() {
    return [
      Patterns(
        abv: 'AF',
        name: 'Abstract Factory',
        onTap: () {},
        widget: AbstractFactory(),
      ),
      Patterns(abv: 'BU', name: 'Builder', onTap: () {}),
      Patterns(
        abv: 'FM',
        name: 'Factory Method',
        onTap: () {},
        widget: FactoryMethod(),
      ),
      Patterns(
        abv: 'PT',
        name: 'Prototype',
        onTap: () {},
        widget: Prototype(),
      ),
      Patterns(abv: 'SG', name: 'Singleton', onTap: () {}),
    ];
  }

  static List<Patterns> buildStructuralList() {
    return [
      Patterns(abv: 'AD', name: 'Adapter', onTap: () {}),
      Patterns(abv: 'BR', name: 'Bridge', onTap: () {}),
      Patterns(abv: 'CP', name: 'Composite', onTap: () {}),
      Patterns(abv: 'DE', name: 'Decorator', onTap: () {}),
      Patterns(abv: 'FA', name: 'Facade', onTap: () {}),
      Patterns(abv: 'FL', name: 'Flyweight', onTap: () {}),
      Patterns(abv: 'PR', name: 'Proxy', onTap: () {}),
    ];
  }

  static List<Patterns> buildBehaviouralList() {
    return [
      Patterns(abv: 'CR', name: 'Chain of Responsibility', onTap: () {}),
      Patterns(abv: 'CM', name: 'Command', onTap: () {}),
      Patterns(abv: 'IN', name: 'Interpreter', onTap: () {}),
      Patterns(abv: 'DE', name: 'Decorator', onTap: () {}),
      Patterns(abv: 'IT', name: 'Iterator', onTap: () {}),
      Patterns(abv: 'MD', name: 'Mediator', onTap: () {}),
      Patterns(abv: 'ME', name: 'Memento', onTap: () {}),
      Patterns(abv: 'ME', name: 'Memento', onTap: () {}),
      Patterns(abv: 'OB', name: 'Observer', onTap: () {}),
      Patterns(abv: 'ST', name: 'State', onTap: () {}),
      Patterns(abv: 'SG', name: 'Strategy', onTap: () {}),
      Patterns(abv: 'TM', name: 'Template Method', onTap: () {}),
      Patterns(abv: 'VI', name: 'Visitor', onTap: () {}),
    ];
  }

  static Widget buildFirstSection({String title, String body}) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: buildText(
        title: title,
        body: body,
      ),
    );
  }

  static Widget buildImage({String imagePath}) {
    return Container(
      padding: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Estrutura:',
          ),
          Container(
            padding: EdgeInsets.only(top: 8.0),
            child: Image.asset(
              imagePath,
              fit: BoxFit.cover,
              filterQuality: FilterQuality.high,
            ),
          ),
        ],
      ),
    );
  }

  static Widget buildContainer({String title, String body}) {
    return Container(
      padding: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 16.0),
      child: buildText(title: title, body: body),
    );
  }

  static Widget buildText({String title, String body}) {
    return RichText(
      softWrap: true,
      text: TextSpan(
        text: title,
        style: TextStyle(
          color: Colors.black87,
          fontFamily: 'GoogleSans',
        ),
        children: [
          TextSpan(
            text: body,
            style: TextStyle(
              color: Colors.grey[500],
              fontFamily: 'GoogleSans',
            ),
          ),
        ],
      ),
    );
  }
}
