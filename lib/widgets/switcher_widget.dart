import 'package:calendar_app/constants/constants.dart';
import 'package:flutter/material.dart';

class SwitcherWidget extends StatefulWidget {
  final ValueChanged<String> updateCalendar;

  const SwitcherWidget({super.key, required this.updateCalendar});

  @override
  State<SwitcherWidget> createState() => _SwitcherWidgetState();
}

class _SwitcherWidgetState extends State<SwitcherWidget> {
  String chosenButton = "Month";

  void _changeColor(String name) {
    setState(() {
      chosenButton = name;
      buttonFill.forEach((key, value) {
        buttonFill[key] = Theme.of(context).highlightColor;
      });
      buttonFill[name] = Theme.of(context).primaryColor;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      color: Theme.of(context).primaryColor,
      child: Padding(
        padding: const EdgeInsets.only(left: 50, right: 50, bottom: 15),
        child: Container(
            padding: const EdgeInsets.only(top: 6, bottom: 6),
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              color: Theme.of(context).highlightColor,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                for (String name in buttonFill.keys)
                  TextButton(
                    onPressed: () {
                      _changeColor(name);
                      widget.updateCalendar(name);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: buttonFill[name],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: Text(name,
                        style: Theme.of(context).textTheme.headlineMedium),
                  ),
              ],
            )),
      ),
    ));
  }
}
