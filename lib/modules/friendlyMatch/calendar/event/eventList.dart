import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:match/modules/friendlyMatch/viewDetails/veiw_details.dart';
import 'package:match/util/const/style/global_color.dart';
import '../event/event.dart';
import '../../../../provider/routes/routes.dart';
import '../controller/calendar_controller.dart';

class EventListWidget extends StatelessWidget {
  final CalendarController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      var events = controller
          .getEventsForDay(controller.selectedDay.value ?? DateTime.now());

      // 불필요한 빌드를 방지하기 위해 Obx를 리스트뷰 바깥으로 이동
      return ListView.builder(
        itemCount: events.length,
        itemBuilder: (context, index) {
          final event = events[index];
          // 유일한 키 제공
          return ListTile(
            key: ObjectKey(event),
            title: Text(event.title),
            subtitle: Text(
              '${event.description}',
            ),
            onTap: () {
              if (event.postId != null) {
                // GetX를 사용하여 명명된 라우트로 이동
                Get.to(() => ViewDetails(event: event));

              } else {
                print('이 이벤트는 게시물 아이디가 없습니다.');
              }
            },
          );
        },
      );
    });
  }
}


//   final List<Event> events;

//   EventListWidget({Key? key, required this.events}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(
//       itemCount: events.length,
//       itemBuilder: (context, index) {
//         final event = events[index];
//         return Container(
//           margin: EdgeInsets.symmetric(horizontal: 12.0, vertical: 4.0),
//           decoration: BoxDecoration(
//             border: Border.all(color: AppColors.mainColor),
//             borderRadius: BorderRadius.circular(12.0),
//           ),
//           child: ListTile(
//             contentPadding:
//                 EdgeInsets.symmetric(horizontal: 12.0, vertical: 5.0),
//             onTap: () => onEventTap(event),
//             title: Text(
//               event.title,
//               style: TextStyle(
//                 fontSize: 16,
//                 fontWeight: FontWeight.bold,
//                 color: Colors.black,
//               ),
//             ),
//             subtitle: Padding(
//               padding: EdgeInsets.only(top: 5),
//               child: Text(
//                 event.description,
//                 style: TextStyle(fontSize: 12),
//               ),
//             ),
//           ),
//         );
//       },
//     );
//   }
// }

// void onEventTap(Event event) {
//   if (event.postId != null) {
//     int postId = event.postId!;
//     Get.toNamed(Routes.view_detail + '/$postId', arguments: event);
//   } else {
//     print('실행중오류발생!');
//   }
