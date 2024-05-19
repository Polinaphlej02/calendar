import 'package:calendar_app/static/colors.dart';
import 'package:flutter/material.dart';

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

  @override
  Widget build(BuildContext context) {
    return Container(
        color: CalendarColors.mainBrown,
        child: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 50, vertical: 5),
          child: Row(
            children: [
              Expanded(
                  child: Text(
                "May 7",
                style: lineTextStyle,
              )),
              Text(
                "0/2",
                style: lineTextStyle,
              ),
              SizedBox(
                width: 10,
              ),
              Icon(
                Icons.arrow_right,
                size: 30,
              ),
            ],
          ),
        ));
  }
}
