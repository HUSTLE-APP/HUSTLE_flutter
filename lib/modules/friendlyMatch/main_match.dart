import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:match/modules/friendlyMatch/board/board.dart';
import 'package:match/modules/friendlyMatch/calendar/calendar.dart';
import 'package:match/modules/friendlyMatch/calendar/calendar_1.dart';
import 'package:match/modules/friendlyMatch/calendar/controller/calendar_controller.dart';
import 'package:match/modules/friendlyMatch/calendar/event/eventList.dart';

class MainMatchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final CalendarController calendarController = Get.put(CalendarController());
    return Scaffold(
      appBar: AppBar(
        title: Text('교류전'),
        titleTextStyle: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 16,
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: CalendarScreen1(),
          ),
          Expanded(
            flex: 3,
            child: EventListWidget(),
          ),
        ],
      ),
    );
  }
}
