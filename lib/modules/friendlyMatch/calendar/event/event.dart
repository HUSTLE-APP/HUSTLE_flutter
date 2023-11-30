import 'dart:collection';
import 'package:flutter/widgets.dart';
import 'package:match/util/const/global_variable.dart';
import 'package:table_calendar/table_calendar.dart';

class Event {
  String title;
  String description;
  int? postId;
  DateTime? date;
  String? place;
  String? clubName;
  String? phone;
  String? imagePath;

  Event(this.title, this.description,
      {this.postId,
      this.date,
      this.place,
      this.clubName,
      this.phone,
      this.imagePath});

  @override
  String toString() => title;
}

Map<DateTime, List<Event>> eventSource = {
  DateTime.utc(2023, 11, 30): [
    Event('연습 상대 구합니다!', '가톨릭대 체육관 / 가톨릭대 바스타즈 ',
        postId: 1,
        date: DateTime.utc(2023, 11, 31),
        place: '가톨릭대학교 체육관',
        clubName: '가톨릭대 바스타즈',
        phone: '010-0000-0000',
        imagePath: imgDir + "map1.png"),
    Event('농구할 사람 ~', '명지대 체육관 / 명지대 농구부',
        postId: 2,
        date: DateTime.utc(2023, 11, 31),
        place: '명지대학교 체육관',
        clubName: '명지대 농구부',
        phone: '010-0000-0000',
        imagePath: imgDir + "map1.png"),
    Event('농구하기', '농구 할 사람 모여모여',
        postId: 3,
        date: DateTime.utc(2023, 12, 1),
        place: '가톨릭대학교 체육관',
        clubName: '가톨릭대 바스타즈',
        phone: '010-0000-0000',
        imagePath: imgDir + "map1.png"),
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
