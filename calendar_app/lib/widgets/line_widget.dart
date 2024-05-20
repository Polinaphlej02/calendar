import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class LineWidget extends StatefulWidget {
  const LineWidget({super.key});

  @override
  State<LineWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<LineWidget> {
  String getFocusedDay(DateTime dateTime) {
    String month = DateFormat.MMMM().format(dateTime);
    String day = dateTime.day.toString();
    return "$month $day";
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Theme.of(context).primaryColor,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 5),
          child: Row(
            children: [
              Expanded(
                  child: Text(
                getFocusedDay(DateTime.now()),
                style: Theme.of(context).textTheme.headlineMedium,
              )),
              Text(
                "0/2",
                style: Theme.of(context).textTheme.headlineMedium,
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
