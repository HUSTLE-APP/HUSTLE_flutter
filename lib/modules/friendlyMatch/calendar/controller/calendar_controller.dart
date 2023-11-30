import 'package:get/get.dart';
import 'package:match/modules/friendlyMatch/calendar/event/event.dart';
import 'package:table_calendar/table_calendar.dart';

class CalendarController extends GetxController {
  var selectedDay = Rx<DateTime?>(null);
  var focusedDay = DateTime.now().obs;
  var calendarFormat = CalendarFormat.week.obs;

  List<Event> getEventsForDay(DateTime day) {
    return eventSource[day] ?? [];
    // 백엔드 이벤트를 가져오는 비동기 메소드로 교체해야함
  }

  void onDaySelected(DateTime day, DateTime focusedDay) {
    selectedDay.value = day;
    this.focusedDay.value = focusedDay;
    // 백엔드에서 데이터를 가져올 경우 이벤트 업데이트하는 호출 추가
  }

  void onFormatChanged(CalendarFormat format) {
    calendarFormat.value = format;
  }
}
