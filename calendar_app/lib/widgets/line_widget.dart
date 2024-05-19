import 'package:calendar_app/static/colors.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class LineWidget extends StatefulWidget {
  const LineWidget({super.key});

  @override
  State<LineWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<LineWidget> {
  static const TextStyle lineTextStyle = TextStyle(
    fontFamily: "Mulish-VariableFont_wght",
    fontWeight: FontWeight.w900,
    fontSize: 13,
    color: Colors.white,
  );

  String getFocusedDay(DateTime dateTime) {
    String month = DateFormat.MMMM().format(dateTime);
    String day = dateTime.day.toString();
    return "$month $day";
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        color: CalendarColors.mainBrown,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 5),
          child: Row(
            children: [
              Expanded(
                  child: Text(
                getFocusedDay(DateTime.now()),
                style: lineTextStyle,
              )),
              const Text(
                "0/2",
                style: lineTextStyle,
              ),
              const SizedBox(
                width: 10,
              ),
              const Icon(
                Icons.arrow_right,
                size: 30,
              ),
            ],
          ),
        ));
  }
}
