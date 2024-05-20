import 'package:calendar_app/utils/date.dart';
import 'package:flutter/material.dart';

class LineWidget extends StatefulWidget {
  const LineWidget({super.key});

  @override
  State<LineWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<LineWidget> {
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
                monthDay,
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
