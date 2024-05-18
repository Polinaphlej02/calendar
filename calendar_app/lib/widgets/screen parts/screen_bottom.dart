import 'package:calendar_app/widgets/line_widget.dart';
import 'package:calendar_app/widgets/tasks_list.dart';
import 'package:flutter/material.dart';

class ScreenBottomWidget extends StatefulWidget {
  const ScreenBottomWidget({super.key});

  @override
  State<ScreenBottomWidget> createState() => _ScreenBottomWidgetState();
}

class _ScreenBottomWidgetState extends State<ScreenBottomWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      LineWidget(),
      TasksList(),
    ]);
  }
}