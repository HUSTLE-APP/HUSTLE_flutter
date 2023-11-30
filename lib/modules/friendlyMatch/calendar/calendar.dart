import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:match/modules/friendlyMatch/board/board.dart';
import 'package:match/modules/friendlyMatch/calendar/event/event.dart';
import 'package:match/provider/routes/routes.dart';
import 'package:table_calendar/table_calendar.dart';
import '../../../../util/const/style/global_color.dart';

class CalendarScreen extends StatefulWidget {
  const CalendarScreen({Key? key}) : super(key: key);

  @override
  _CalendarState createState() => _CalendarState();
}

class _CalendarState extends State<CalendarScreen> {
  // DateTime? _selectedDay;
  // DateTime _focusedDay = DateTime.now();

  // late final ValueNotifier<List<Event>> _selectedEvents;
  // CalendarFormat _calendarFormet = CalendarFormat.week;
  // PageController _pageController = PageController();

  // List<Event> _getEventsForDay(DateTime day) {
  //   return eventSource[day] ?? [];
  // }

  // void _onDaySelected(selectedDay, focusedDay) {
  //   Navigator.of(context).push(MaterialPageRoute(
  //     builder: ((context) => BoardScreen(
  //           selectedDate: selectedDay,
  //           eventSource: eventSource,
  //         )),
  //   ));
  // }

  // @override
  // void initState() {
  //   super.initState();
  //   _selectedEvents = ValueNotifier(_getEventsForDay(_focusedDay));
  // }

  // @override
  // void dispose() {
  //   _selectedEvents.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
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
      // body: Container(
      //     padding: EdgeInsets.only(top: 30),
      //     height: MediaQuery.of(context).size.height,
      //     child: Column(
      //       children: [
      //         TableCalendar<Event>(
      //           focusedDay: _focusedDay,
      //           firstDay: DateTime.utc(2023, 10, 31),
      //           lastDay: DateTime.utc(2023, 11, 30),
      //           selectedDayPredicate: (day) {
      //             DateTime dateTime =
      //                 DateTime.utc(day.year, day.month, day.day);
      //             return isSameDay(_selectedDay, dateTime);
      //           },
      //           locale: 'ko-KR',
      //           daysOfWeekHeight: 30,
      //           headerVisible: false,
      //           calendarStyle: CalendarStyle(
      //               markersMaxCount: 1,
      //               defaultTextStyle: TextStyle(
      //                   color: Colors.black, fontWeight: FontWeight.bold),
      //               weekNumberTextStyle: TextStyle(
      //                   color: Colors.black, fontWeight: FontWeight.bold),
      //               outsideDaysVisible: false,
      //               todayDecoration: BoxDecoration(
      //                 color: Colors.blue,
      //                 shape: BoxShape.circle,
      //               ),
      //               todayTextStyle: TextStyle(
      //                   fontWeight: FontWeight.bold, color: Colors.white),
      //               selectedTextStyle: TextStyle(color: Colors.white),
      //               selectedDecoration: BoxDecoration(
      //                 color: Colors.lightBlueAccent,
      //                 shape: BoxShape.circle,
      //               )),
      //           eventLoader: (day) {
      //             DateTime dateTime =
      //                 DateTime.utc(day.year, day.month, day.day);
      //             print(dateTime);
      //             return _getEventsForDay(dateTime);
      //           },
      //           onDaySelected: ((selectedDay, focusedDay) {
      //             Navigator.of(context).push(
      //               MaterialPageRoute(
      //                 builder: (context) => BoardScreen(
      //                   selectedDate: selectedDay,
      //                   eventSource: eventSource,
      //                 ),
      //               ),
      //             );
      //           }),
      //           onPageChanged: (focusDay) {
      //             _focusedDay = focusDay;
      //           },
      //           calendarFormat: _calendarFormet,
      //           onFormatChanged: ((format) {
      //             setState(() {
      //               _calendarFormet = format;
      //             });
      //           }),
      //           calendarBuilders: CalendarBuilders(dowBuilder: (context, day) {
      //             switch (day.weekday) {
      //               case 1:
      //                 return Center(
      //                   child: Text(
      //                     '월',
      //                     style: TextStyle(
      //                       color: Colors.black,
      //                       fontWeight: FontWeight.bold,
      //                     ),
      //                   ),
      //                 );
      //               case 2:
      //                 return Center(
      //                   child: Text(
      //                     '화',
      //                     style: TextStyle(
      //                       color: Colors.black,
      //                       fontWeight: FontWeight.bold,
      //                     ),
      //                   ),
      //                 );
      //               case 3:
      //                 return Center(
      //                   child: Text(
      //                     '수',
      //                     style: TextStyle(
      //                       color: Colors.black,
      //                       fontWeight: FontWeight.bold,
      //                     ),
      //                   ),
      //                 );
      //               case 4:
      //                 return Center(
      //                   child: Text(
      //                     '목',
      //                     style: TextStyle(
      //                       color: Colors.black,
      //                       fontWeight: FontWeight.bold,
      //                     ),
      //                   ),
      //                 );
      //               case 5:
      //                 return Center(
      //                   child: Text(
      //                     '금',
      //                     style: TextStyle(
      //                       color: Colors.black,
      //                       fontWeight: FontWeight.bold,
      //                     ),
      //                   ),
      //                 );
      //               case 6:
      //                 return Center(
      //                   child: Text(
      //                     '토',
      //                     style: TextStyle(
      //                       color: Colors.black,
      //                       fontWeight: FontWeight.bold,
      //                     ),
      //                   ),
      //                 );
      //               case 7:
      //                 return Center(
      //                   child: Text(
      //                     '일',
      //                     style: TextStyle(
      //                       color: Colors.black,
      //                       fontWeight: FontWeight.bold,
      //                     ),
      //                   ),
      //                 );
      //             }
      //           }),
      //         ),
      //         SizedBox(
      //           height: 16,
      //         ),
      //         Expanded(
      //             child: ValueListenableBuilder<List<Event>>(
      //                 valueListenable: _selectedEvents,
      //                 builder: (context, value, _) {
      //                   return ListView.builder(
      //                     itemCount: value.length,
      //                     itemBuilder: ((context, index) {
      //                       final event = value[index];
      //                       return Container(
      //                         margin: EdgeInsets.symmetric(
      //                             horizontal: 12.0, vertical: 4.0),
      //                         decoration: BoxDecoration(
      //                           border: Border.all(color: AppColors.mainColor),
      //                           borderRadius: BorderRadius.circular(12.0),
      //                         ),
      //                         child: ListTile(
      //                           contentPadding: EdgeInsets.symmetric(
      //                               horizontal: 12.0, vertical: 5.0),
      //                           onTap: () {
      //                             // 이벤트 선택시 실행할 작업
      //                             if (event.postId != null) {
      //                               int postId = event.postId!;
      //                               Get.toNamed(Routes.view_detail + '/$postId',
      //                                   arguments: event);
      //                             } else {
      //                               print('실행중 오류 발생');
      //                             }
      //                           },
      //                           title: Text(
      //                             value[index].title,
      //                             style: TextStyle(
      //                               fontSize: 16,
      //                               fontWeight: FontWeight.bold,
      //                               color: Colors.black,
      //                             ),
      //                           ),
      //                           subtitle: Padding(
      //                             padding: EdgeInsets.only(top: 5),
      //                             child: Text(
      //                               value[index].description,
      //                               style: TextStyle(
      //                                 fontSize: 12,
      //                               ),
      //                             ),
      //                           ),
      //                         ),
      //                       );
      //                     }),
      //                   );
      //                 })),
      //       ],
      //     )),
    );
  }
}
