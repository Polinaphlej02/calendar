import 'package:calendar_app/pages/calendar_page.dart';
import 'package:calendar_app/static/colors.dart';
import 'package:flutter/material.dart';

class SwitcherWidget extends StatelessWidget {
  SwitcherWidget({super.key});
  static const TextStyle switcher_text_style = TextStyle(
    fontFamily: "Mulish-VariableFont_wght",
    fontWeight: FontWeight.w900,
    fontSize: 12,
    color: Colors.white,
  );

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      color: CalendarColors.mainBrown,
      child: Padding(
        padding: EdgeInsets.only(left: 45, right: 45, bottom: 15),
        child: Container(
            padding: EdgeInsets.only(top: 10, bottom: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: CalendarColors.lightBrown,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: CalendarColors.mainBrown,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: Text("Day", style: switcher_text_style),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: CalendarColors.lightBrown,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: Text("Week", style: switcher_text_style),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: CalendarColors.lightBrown,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: Text("Month", style: switcher_text_style),
                ),
              ],
            )),
      ),
    ));
  }
}
