import 'package:calendar_app/widgets/calendar.dart';
import 'package:calendar_app/widgets/my_inherited.dart';
import 'package:calendar_app/widgets/switcher_widget.dart';
import 'package:calendar_app/widgets/textField_widget.dart';
import 'package:flutter/material.dart';

class ScreenTopWidget extends StatefulWidget {
  const ScreenTopWidget({super.key});

  @override
  State<ScreenTopWidget> createState() => _ScreenTopWidgetState();
}

class _ScreenTopWidgetState extends State<ScreenTopWidget> {

  // String chosenCal = "Month";
  String updateCalName = "Month";

  updateCalendar(String name){
    setState(() {
      updateCalName = name;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MyInheritedWidget(
      chosenCal: updateCalName,
      child: Container(
        child: Column(children: [
          SwitcherWidget(
            updateCalendar: updateCalendar,
          ),
          const TextFieldWidget(),
          const CalendarWidget(),
        ]),
      ),
    );
  }
}
