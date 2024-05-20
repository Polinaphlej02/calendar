import 'package:intl/intl.dart';

DateTime dateTime = DateTime.now();

String month = DateFormat.MMMM().format(dateTime);
String year = dateTime.year.toString();
String day = dateTime.day.toString();

String monthYear = "$month $year";
String monthDay = "$month $day";
