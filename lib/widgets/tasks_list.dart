import 'package:calendar_app/constants/constants.dart';
import 'package:flutter/material.dart';

class TasksList extends StatelessWidget {
  TasksList({super.key});

  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Padding(
        padding: const EdgeInsets.only(right: 20, top: 10),
        child: RawScrollbar(
          thumbColor: Theme.of(context).iconTheme.color,
          radius: const Radius.circular(20),
          minThumbLength: 40,
          thickness: 8,
          controller: _scrollController,
          thumbVisibility: true,
          child: ListView.builder(
            controller: _scrollController,
            shrinkWrap: true,
            itemCount: tasks.length,
            itemBuilder: (context, index) {
              return ListTile(
                contentPadding: const EdgeInsets.symmetric(horizontal: 35),
                leading: Icon(
                  Icons.check_box,
                  color: Theme.of(context).iconTheme.color,
                  size: 40,
                ),
                trailing: Column(
                  children: [
                    Flexible(
                      child: Row(mainAxisSize: MainAxisSize.min, children: [
                        Icon(
                          Icons.circle,
                          color: Theme.of(context).primaryIconTheme.color,
                          size: Theme.of(context).primaryIconTheme.size,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Icon(
                          Icons.circle,
                          color: Theme.of(context).primaryIconTheme.color,
                          size: Theme.of(context).primaryIconTheme.size,
                        ),
                      ]),
                    ),
                    const SizedBox()
                  ],
                ),
                title: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    "${tasks.keys.elementAt(index)}",
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                ),
                subtitle: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    child: Text("${tasks.values.elementAt(index)}",
                        style: Theme.of(context).textTheme.headlineSmall)),
              );
            },
          ),
        ),
      ),
    );
  }
}
