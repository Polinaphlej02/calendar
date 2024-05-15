import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:table_calendar/table_calendar.dart';

class CalendarMonth extends StatefulWidget {
  const CalendarMonth({super.key});

  @override
  State<CalendarMonth> createState() => _CalendarMonthState();
}

class _CalendarMonthState extends State<CalendarMonth> {
  TextStyle dayStyle = TextStyle(
    color: Color.fromARGB(225, 46, 39, 57), 
    fontWeight: FontWeight.w900
    );

  DateTime _focusedDay = DateTime.now();
  late DateTime _firstDay = DateTime.now().subtract(const Duration(days: 1000));
  late DateTime _lastDay = DateTime.now().add(const Duration(days: 1000));

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 50, right: 50, top: 20),
      child:  TableCalendar(
        focusedDay: _focusedDay,
        firstDay: _firstDay,
        lastDay: _lastDay,
        rowHeight: 40,
        daysOfWeekStyle: DaysOfWeekStyle(
          weekdayStyle: dayStyle,
          weekendStyle: dayStyle,
        ),
        startingDayOfWeek: StartingDayOfWeek.monday,
        sixWeekMonthsEnforced: true,
        headerVisible: false,
        ),
);
  }
}
