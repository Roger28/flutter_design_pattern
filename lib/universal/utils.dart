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

  static List<Patterns> buildSCreationalList() {
    return [
      Patterns(abv: 'AB', name: 'Abstract Factory', onTap: () {}),
      Patterns(abv: 'BU', name: 'Builder', onTap: () {}),
      Patterns(abv: 'FM', name: 'Factory Method', onTap: () {}),
      Patterns(abv: 'PT', name: 'Prototype', onTap: () {}),
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

}
