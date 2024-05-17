import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class CalendarWeek extends StatefulWidget {
  const CalendarWeek({super.key});

  @override
  State<CalendarWeek> createState() => _CalendarMonthState();
}

class _CalendarMonthState extends State<CalendarWeek> {
  TextStyle dayStyle = TextStyle(
      color: Color.fromARGB(225, 46, 39, 57), fontWeight: FontWeight.w900);

  DateTime _focusedDay = DateTime.now();
  late DateTime _firstDay = DateTime.now().subtract(const Duration(days: 1000));
  late DateTime _lastDay = DateTime.now().add(const Duration(days: 1000));


  @override
  Widget build(BuildContext context) {
    return Padding(
          padding: EdgeInsets.only(top: 20, bottom: 20),
          child: Row(
            children: [
            IconButton(onPressed: () => {}, icon: Icon(Icons.arrow_left,size: 30,)),
            Expanded(
              child: TableCalendar(
                focusedDay: _focusedDay,
                firstDay: _firstDay,
                lastDay: _lastDay,
                rowHeight: 40,
                calendarFormat: CalendarFormat.week,
                daysOfWeekStyle: DaysOfWeekStyle(
                  weekdayStyle: dayStyle,
                  weekendStyle: dayStyle,
                ),
                calendarStyle: const CalendarStyle(
                    todayDecoration: BoxDecoration(
                  color: Color.fromARGB(225, 199, 188, 186),
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                )),
                startingDayOfWeek: StartingDayOfWeek.monday,
                sixWeekMonthsEnforced: true,
                headerVisible: false,
              ),
            ),
            IconButton(onPressed: (){}, icon: Icon(Icons.arrow_right,size: 30,)),
          ]));}
  }