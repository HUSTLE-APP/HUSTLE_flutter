import 'package:get/get.dart';
// import 'package:match/provider/api/event_api.dart';
// import 'package:match/util/const/global_mock_data.dart';
//
// import '../../../model/event_detail/event_detail.dart';

// class EventDetailController extends GetxController {
//   int eventId = Get.arguments['eventId'] ?? 0;
//   Rx<EventDetail> eventDetail = tmpEventDetail.obs;
//   @override
//   void onInit() async {
//     super.onInit();
//     eventDetail.value =
//         await EventApi.getEventDetail(eventId: eventId) ?? tmpEventDetail;
//   }
// }

// class EventDetailController extends GetxController {
//   Rx<int> selectIdx = 0.obs;
//   @override
//   void onInit() {
//     super.onInit();
//   }
// }
import 'package:get/get.dart';



class EventDetailController extends GetxController {
  final Rx<Map<String, dynamic>> eventInfo = Rx({
    "matchname": "",
    "title": "대회",
    "title1": "가톨릭대학교 총장배 대회",
    "date": "신청 기간",
    "dateStart": "2022-12-13",
    "dateEnd": "2022-12-20",
    "location": "장소",
    "location1": "가톨릭대학교 체육관",
    "name": "주최자",
    "name1": "최유빈",
    "phone": "연락처",
    "phone1": "010-1234-5678",
    "startDate": "2023-01-01",
    "endDate": "2023-01-31",
  });

  final Rx<List<Map<String, String>>> eventContents = Rx([
    {"contentsType": "IMG", "contents": "asset/image/iv_test_contest.jpeg"}, // 경로 수정
    {"contentsType": "TEXT", "contents": ""},
    // 다른 내용들을 여기에 추가합니다.
  ]);

  @override
  void onInit() {
    super.onInit();
    // 여기서 필요한 초기화 작업을 수행합니다.
  }
}


