import 'package:calendar_app/static/colors.dart';
import 'package:flutter/material.dart';

class SwitcherWidget extends StatefulWidget {
  const SwitcherWidget({super.key});

  @override
  State<SwitcherWidget> createState() => _SwitcherWidgetState();
}

class _SwitcherWidgetState extends State<SwitcherWidget> {
  static const TextStyle switcher_text_style = TextStyle(
    fontFamily: "Mulish-VariableFont_wght",
    fontWeight: FontWeight.w900,
    fontSize: 14,
    color: Colors.white,
  );

   Map buttonFill = {
    "Day": CalendarColors.lightBrown,
    "Week": CalendarColors.lightBrown,
    "Month": CalendarColors.lightBrown,
  };

  String chosenButton = "Month";

  void _changeColor(String name) {
    setState(() {
    chosenButton = name;
    buttonFill.forEach((key, value) {buttonFill[key] = CalendarColors.lightBrown;});
    buttonFill[name] = CalendarColors.mainBrown;
    print(buttonFill);
    });
  }


  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      color: CalendarColors.mainBrown,
      child: Padding(
        padding: EdgeInsets.only(left: 55, right: 55, bottom: 15),
        child: Container(
            padding: EdgeInsets.only(top: 8, bottom: 8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: CalendarColors.lightBrown,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                for (String name in buttonFill.keys)
                  TextButton(
                    onPressed: () => _changeColor(name),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: buttonFill[name],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: Text(name, style: switcher_text_style),
                  ),
              ],
            )),
      ),
    ));
  }

}
