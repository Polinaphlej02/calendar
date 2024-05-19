import 'package:calendar_app/static/colors.dart';
import 'package:calendar_app/widgets/line_widget.dart';
import 'package:calendar_app/widgets/screen_top.dart';
import 'package:calendar_app/widgets/sidebar.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'tasks_list.dart';

class ScreenWidget extends StatelessWidget {
  const ScreenWidget({
    super.key,
  });

  String getFocusedDate(DateTime dateTime) {
    String month = DateFormat.MMMM().format(dateTime);
    String year = dateTime.year.toString();
    return "$month $year";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      drawer: const SideBarWidget(),
      appBar: AppBar(
        title: Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: const EdgeInsets.only(right: 30),
              child: Text(
                getFocusedDate(DateTime.now()),
                style: const TextStyle(
                  fontFamily: "Mulish-VariableFont_wght",
                  fontWeight: FontWeight.w900,
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
            )),
        backgroundColor: CalendarColors.mainBrown,
        leading: Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Builder(builder: (context) {
              return IconButton(
                onPressed: () => Scaffold.of(context).openDrawer(),
                icon: const Icon(
                  Icons.menu,
                  color: Colors.white,
                  size: 30,
                ),
              );
            })),
      ),
      body: Column(
        children: [
          const ScreenTopWidget(),
          const LineWidget(),
          TasksList(),
        ],
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 25),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: CalendarColors.darkBrown,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          child: const Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Row(
              children: [
                Expanded(
                    child: Text("Create new task",
                        style: TextStyle(
                          fontFamily: "Mulish-VariableFont_wght",
                          fontWeight: FontWeight.w900,
                          fontSize: 15,
                          color: Colors.white,
                        ))),
                Stack(children: [
                  Icon(
                    Icons.circle,
                    color: CalendarColors.circleBrown,
                    size: 40,
                  ),
                  Icon(
                    Icons.add,
                    color: CalendarColors.darkBrown,
                    size: 40,
                  )
                ])
              ],
            ),
          ),
          onPressed: () {
            Navigator.pushNamed(context, '/new_task');
          },
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
