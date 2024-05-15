
import 'package:flutter/material.dart';

import '../widgets/screen_widget.dart';

class CalendarApp extends StatelessWidget {
  const CalendarApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      home:  ScreenWidget(),
    );
  }
}

