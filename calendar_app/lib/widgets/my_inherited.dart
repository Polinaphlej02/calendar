import 'package:flutter/material.dart';

class MyInheritedWidget extends InheritedWidget {
  final String chosenCal;

  MyInheritedWidget({
    required this.chosenCal,
    required Widget child,
  }) : super(child: child);

  static MyInheritedWidget? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<MyInheritedWidget>();
  }

  @override
  bool updateShouldNotify(MyInheritedWidget oldWidget) {
    return chosenCal != oldWidget.chosenCal;
  }
}
