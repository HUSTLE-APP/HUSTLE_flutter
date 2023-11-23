import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:match/modules/friendlyMatch/calendar/controller/calendar_controller.dart';
import 'package:match/modules/viewDetails/veiw_details.dart';
import '../../friendlyMatch/calendar/event/event.dart';

class BoardScreen extends StatelessWidget {
  // final DateTime selectedDate;
  // final Map<DateTime, List<Event>> eventSouce;

  // BoardScreen({required this.selectedDate, required this.eventSource});

  //final PostController postConctroller = Get.find();

  final CalendarController calendarController = Get.find();

  @override
  Widget build(BuildContext context) {
    // return Obx(() {
    //   return Expanded(
    //       child: ListView.builder(
    //           itemCount: postConctroller.posts.length,
    //           itemBuilder: ((context, index) {
    //             return ListTile(
    //               title: Text(postConctroller.posts[index]),
    //             );
    //           })));
    // });
    return GetBuilder<CalendarController>(builder: (controller) {
      var events = controller
          .getEventsForDay(controller.selectedDay.value ?? DateTime.now());
      return Scaffold(
        body: ListView.builder(
          //shrinkWrap: true,
          itemCount: events.length,
          itemBuilder: (context, index) {
            Event event = events[index];
            return ListTile(
              title: Text(event.title),
              subtitle: Text(event.description),
              onTap: () {
                if (event.postId != null) {
                  Get.to(() => ViewDetails(event: event));
                }
              },
            );
          },
        ),
      );
    });
  }
}
