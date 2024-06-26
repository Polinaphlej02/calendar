import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class CalendarWeek extends StatelessWidget {
  CalendarWeek({super.key});

  final DateTime _focusedDay = DateTime.now();

  final DateTime _firstDay =
      DateTime.now().subtract(const Duration(days: 1000));

  final DateTime _lastDay = DateTime.now().add(const Duration(days: 1000));

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(top: 20, bottom: 20),
        child: Row(children: [
          IconButton(
              onPressed: () => {},
              icon: const Icon(
                Icons.arrow_left,
                size: 30,
              )),
          Expanded(
            child: TableCalendar(
              focusedDay: _focusedDay,
              firstDay: _firstDay,
              lastDay: _lastDay,
              rowHeight: 40,
              calendarFormat: CalendarFormat.week,
              daysOfWeekStyle: DaysOfWeekStyle(
                weekdayStyle: Theme.of(context).textTheme.titleSmall!,
                weekendStyle: Theme.of(context).textTheme.titleSmall!,
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
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.arrow_right,
                size: 30,
              )),
        ]));
  }
}
