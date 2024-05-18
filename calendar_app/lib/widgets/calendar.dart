import 'package:calendar_app/widgets/calendars/calendar_day.dart';
import 'package:calendar_app/widgets/calendars/calendar_month.dart';
import 'package:calendar_app/widgets/calendars/calendar_week.dart';
import 'package:flutter/material.dart';

class CalendarWidget extends StatefulWidget {
  // final String chosenCal;
  const CalendarWidget({super.key});

  @override
  State<CalendarWidget> createState() => _CalendarWidgetState();
}

class _CalendarWidgetState extends State<CalendarWidget> {


  ValueNotifier<String> textNotifier = ValueNotifier("Day");

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<String>(
      valueListenable: textNotifier, 
      builder: (context, text, _) {
        if (text == "Month") {
          return CalendarMonth();
        } else if (text == "Week") {
          return CalendarWeek();
        } else {
          return CalendarDay();
        } 
      }
      );
  }
}