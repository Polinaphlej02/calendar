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
                style: Theme.of(context).textTheme.headlineLarge,
              ),
            )),
        backgroundColor: Theme.of(context).primaryColor,
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
            backgroundColor: Theme.of(context).primaryColorDark,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Row(
              children: [
                Expanded(
                    child: Text("Create new task",
                        style: Theme.of(context).textTheme.headlineMedium)),
                Stack(children: [
                  Icon(
                    Icons.circle,
                    color: Theme.of(context).iconTheme.color,
                    size: 40,
                  ),
                  Icon(
                    Icons.add,
                    color: Theme.of(context).primaryColor,
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
