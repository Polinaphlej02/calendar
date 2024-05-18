import 'package:flutter/material.dart';

class MyInheritedWidget extends InheritedWidget {
  final String chosenCal;

  MyInheritedWidget({super.key, required this.chosenCal, required super.child});

  static MyInheritedWidget? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<MyInheritedWidget>();
  }

  @override
  bool updateShouldNotify(MyInheritedWidget oldWidget) {
    return chosenCal != oldWidget.chosenCal;
  }
}
