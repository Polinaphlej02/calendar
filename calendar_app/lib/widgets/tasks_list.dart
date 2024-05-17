import 'package:calendar_app/static/colors.dart';
import 'package:flutter/material.dart';

class TasksList extends StatelessWidget {
  TasksList({super.key});
  static const TextStyle taskTextStyle = TextStyle(
    fontFamily: "Mulish-VariableFont_wght",
    fontWeight: FontWeight.w900,
    fontSize: 12,
  );

  final Map tasks = {
    "12 PM": "Prepare for presentation about new project",
    "13 PM": "Meeting with colleagues",
    "15 PM": "Meeting with colleagues",
    "19 PM": "Going to the gym",
    "21 PM": "Having a rest",
    "23 PM": "Going to bed",
    "24 PM": "Going to the gym",
  };
  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Padding(
        padding: EdgeInsets.only(right: 20),
        child: RawScrollbar(

          thumbColor: CalendarColors.iconFGrey,
          radius: Radius.circular(20),
          minThumbLength: 40,
          thickness: 8,
          controller: _scrollController,
          thumbVisibility: true,
          child: ListView.builder(
              controller: _scrollController,
              shrinkWrap: true,
              itemCount: tasks.length,
              itemBuilder: (context, index) {
                return  ListTile(
                  contentPadding: EdgeInsets.symmetric(horizontal: 35),
                    leading: Icon(Icons.check_box, color: CalendarColors.iconFGrey, size: 40,),
                    trailing: 
                      const Column(
                        children: [
                          Flexible(
                            child: Row(mainAxisSize: MainAxisSize.min,
                              children: [
                              Icon(Icons.circle, color: CalendarColors.iconFGrey, size: 12,),
                              SizedBox(width: 5,),
                              Icon(Icons.circle, color: CalendarColors.iconFGrey, size: 12,),
                              ]),
                          ),
                          SizedBox()
                        ],
                      ),
                    title: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Text("${tasks.keys.elementAt(index)}", style: taskTextStyle,),),
                    subtitle: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                      child: Text("${tasks.values.elementAt(index)}", style: taskTextStyle)),
                );
              },
          ),
        ),
      ),
    );
  }
}