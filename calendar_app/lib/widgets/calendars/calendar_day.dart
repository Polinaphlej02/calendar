import 'package:calendar_app/static/colors.dart';
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
          todayTextStyle: const TextStyle(
            fontFamily: "Mulish-VariableFont_wght",
            fontWeight: FontWeight.w900,
            fontSize: 15,
            color: Colors.white,
          ),
          todayHighlightColor: CalendarColors.mainBrown,
          showCurrentTimeIndicator: false,
        ),
      ),
    );
  }
}
