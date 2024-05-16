import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
import 'package:table_calendar/table_calendar.dart';

class CalendarWeek extends StatefulWidget {
  const CalendarWeek({super.key});

  @override
  State<CalendarWeek> createState() => _CalendarWeekState();
}

class _CalendarWeekState extends State<CalendarWeek> {
  TextStyle dayStyle = TextStyle(
      color: Color.fromARGB(225, 46, 39, 57), fontWeight: FontWeight.w900);

  DateTime _focusedDay = DateTime.now();
  late DateTime _firstDay = DateTime.now().subtract(const Duration(days: 1000));
  late DateTime _lastDay = DateTime.now().add(const Duration(days: 1000));

  

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(top: 20),
        child:
          Expanded(
            child: SfCalendar(
              view: CalendarView.month,
            )),
      );
  }
}
