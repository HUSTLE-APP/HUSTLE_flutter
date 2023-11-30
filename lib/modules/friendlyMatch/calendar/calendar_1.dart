import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:match/modules/friendlyMatch/calendar/controller/calendar_controller.dart';
import 'package:table_calendar/table_calendar.dart';
import '../calendar/event/event.dart';

class CalendarScreen1 extends StatelessWidget {
  final CalendarController calendarController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Obx(
      () {
        return Container(
          padding: EdgeInsets.only(top: 30),
          child: TableCalendar<Event>(
            focusedDay: calendarController.focusedDay.value,
            firstDay: DateTime.utc(2023, 11, 30),
            lastDay: DateTime.utc(2024, 01, 01),
            selectedDayPredicate: (day) {
              return calendarController.selectedDay.value != null &&
                  isSameDay(calendarController.selectedDay.value!, day);
            },
            locale: 'ko-KR',
            daysOfWeekHeight: 30,
            headerVisible: false,
            calendarStyle: CalendarStyle(
                markersMaxCount: 1,
                defaultTextStyle:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                weekNumberTextStyle:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                outsideDaysVisible: false,
                todayDecoration: BoxDecoration(
                  color: Colors.blue,
                  shape: BoxShape.circle,
                ),
                todayTextStyle:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
                selectedTextStyle: TextStyle(color: Colors.white),
                selectedDecoration: BoxDecoration(
                  color: Colors.lightBlueAccent,
                  shape: BoxShape.circle,
                )),
            eventLoader: (day) => calendarController.getEventsForDay(day),
            onDaySelected: calendarController.onDaySelected,
            onPageChanged: (focusDay) =>
                calendarController.focusedDay.value = focusDay,
            calendarFormat: calendarController.calendarFormat.value,
            onFormatChanged: calendarController.onFormatChanged,
          ),
        );
      },
    );
  }
}
