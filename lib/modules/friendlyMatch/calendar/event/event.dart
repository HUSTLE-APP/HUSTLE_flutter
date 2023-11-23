import 'dart:collection';
import 'package:table_calendar/table_calendar.dart';

class Event {
  String title;
  String description;
  int? postId;
  Event(this.title, this.description, {this.postId});

  @override
  String toString() => title;
}

Map<DateTime, List<Event>> eventSource = {
  DateTime.utc(2023, 11, 14): [
    Event('5분 기도하기', '하루에 5분 동안 기도하기', postId: 1),
    Event('교회 가서 인증샷 찍기', '교회에 가서 사진 찍기', postId: 2),
    Event('농구하기', '친구와 농구를 즐기기', postId: 3),
  ],
  DateTime.utc(2023, 11, 31): [
    Event('5분 기도하기', '하루에 5분 동안 기도하기'),
  ],
  DateTime.utc(2023, 11, 9): [
    Event('5분 기도하기', '하루에 5분 동안 기도하기'),
    Event('교회 가서 인증샷 찍기', '교회에 가서 사진 찍기'),
  ],
};

final events = LinkedHashMap<DateTime, List<Event>>(
  equals: isSameDay,
)..addAll(eventSource);
