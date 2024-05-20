import 'package:calendar_app/pages/empty_page.dart';
import 'package:calendar_app/themes/theme.dart';
import 'package:flutter/material.dart';

import '../widgets/screen_widget.dart';

class CalendarApp extends StatelessWidget {
  const CalendarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: calendarTheme(),
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
