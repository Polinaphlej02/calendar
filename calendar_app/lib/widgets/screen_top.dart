import 'package:calendar_app/widgets/calendar.dart';
import 'package:calendar_app/widgets/switcher_widget.dart';
import 'package:calendar_app/widgets/textField_widget.dart';
import 'package:flutter/material.dart';

class ScreenTopWidget extends StatefulWidget {
  const ScreenTopWidget({super.key});

  @override
  State<ScreenTopWidget> createState() => _ScreenTopWidgetState();
}

class _ScreenTopWidgetState extends State<ScreenTopWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Column(children: [
        SwitcherWidget(),
        TextFieldWidget(),
        CalendarWidget(),
      ]),
    );
  }
}
