import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class CalendarDay extends StatelessWidget {
  const CalendarDay({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 5),
      child: Flexible(
        child: SfCalendar(
          view: CalendarView.day,
          headerHeight: 0,
          todayTextStyle: Theme.of(context).textTheme.bodyMedium,
          todayHighlightColor: Theme.of(context).highlightColor,
          showCurrentTimeIndicator: false,
        ),
      ),
    );
  }
}
