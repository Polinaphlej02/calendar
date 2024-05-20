import 'package:calendar_app/widgets/calendars/calendar_day.dart';
import 'package:calendar_app/widgets/calendars/calendar_month.dart';
import 'package:calendar_app/widgets/calendars/calendar_week.dart';
import 'package:calendar_app/widgets/my_inherited.dart';
import 'package:flutter/material.dart';

class CalendarWidget extends StatefulWidget {
  const CalendarWidget({super.key});

  @override
  State<CalendarWidget> createState() => _CalendarWidgetState();
}

class _CalendarWidgetState extends State<CalendarWidget> {
  @override
  Widget build(BuildContext context) {
    final chosenCal = MyInheritedWidget.of(context)?.chosenCal;

    if (chosenCal == "Month") {
      return CalendarMonth();
    } else if (chosenCal == "Week") {
      return CalendarWeek();
    } else {
      return const CalendarDay();
    }
  }
}
