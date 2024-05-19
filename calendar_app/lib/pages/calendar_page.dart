
import 'package:calendar_app/pages/empty_page.dart';
import 'package:flutter/material.dart';

import '../widgets/screen_widget.dart';

class CalendarApp extends StatelessWidget {
  const CalendarApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '',
      routes: {
        '': (context) => const ScreenWidget(),
        '/new_task': (context) => const EmptyPage(),
      },
      title: 'Flutter Demo',
      home: const ScreenWidget(),
    );
  }
}

