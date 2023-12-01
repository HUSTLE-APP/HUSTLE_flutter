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
  DateTime.utc(2023, 12, 1): [
    Event('연습 상대 구합니다!', '가톨릭대 체육관 / 가톨릭대 바스타즈 ',
        postId: 1,
        date: DateTime.utc(2023, 11, 30),
        place: '가톨릭대학교 체육관',
        clubName: '가톨릭대 바스타즈',
        phone: 'cuk_bastards',
        imagePath: imgDir + "map/map1.png"),
    Event('농구할 사람 ~', '명지대 체육관 / 명지대 자연캠퍼스 농구부',
        postId: 2,
        date: DateTime.utc(2023, 12, 1),
        place: '명지대학교 자연캠퍼스 체육관',
        clubName: '명지대 돌핀스',
        phone: '',
        imagePath: imgDir + "map/map2.png"),
    Event('농구하기', '장충 체육관 / 동국대 바구니',
        postId: 3,
        date: DateTime.utc(2023, 12, 5),
        place: '장충체육관',
        clubName: '동국대 바구니',
        phone: 'baguni_dongguk',
        imagePath: imgDir + "map/map3.png"),
    Event('아마추어 대회 연습할 사람 구해요', '토모짐 / 서울시립대 SCUBA',
        postId: 4,
        date: DateTime.utc(2023, 12, 10),
        place: '토모짐',
        clubName: '서울시립대 SCUBA',
        phone: 'uos.scuba_official',
        imagePath: imgDir + "map/map3.png"),
    Event('아마추어 대회 연습할 사람 구해요', '토모짐 / 숭실대 SSBC',
        postId: 5,
        date: DateTime.utc(2023, 12, 6),
        place: '토모짐 - 서울특별시 동대문구 사가정로 148',
        clubName: '숭실대 SSBC',
        phone: 'ssbs_1979_ssu',
        imagePath: imgDir + "map/map4.png"),
    Event('아마추어 대회 연습할 사람 구함', '플레이존 스포츠센터 / 국민대 TAB',
        postId: 6,
        date: DateTime.utc(2023, 12, 10),
        place: '플레이존 스포츠센터 - 서울특별시 강남구 논현로 742',
        clubName: '국민대 TAB',
        phone: 'tab_kookmin_basketball',
        imagePath: imgDir + "map/map5.png"),
  ],
  DateTime.utc(2023, 12, 5): [
    Event('심심풀이 농구 할 사람', '가톨릭대 체육관 / 가톨릭대 라온',
        postId: 7,
        date: DateTime.utc(2023, 12, 15),
        place: '가톨릭대학교 체육관',
        clubName: '가톨릭대 라온',
        phone: '',
        imagePath: imgDir + "map/map1.png"),
    Event('경희대에서 농구 구함', ' / 경희대 농쿠',
        postId: 8,
        date: DateTime.utc(2023, 12, 7),
        place: '경희대 선승관',
        clubName: '경희대 농쿠',
        phone: 'khu_basketball',
        imagePath: imgDir + "map/map6.png"),
    Event('농구 할 팀 구합니다', '한서대 체육관 / 한서대 히바',
        postId: 9,
        date: DateTime.utc(2023, 12, 9),
        place: '한서대 체육관 - 충청남도 서산시 해미면 한서1로 46',
        clubName: '한서대 리바',
        phone: 'hanseo_h1ba',
        imagePath: imgDir + "map/map7.png"),
  ],
  DateTime.utc(2023, 12, 3): [
    Event('연습 상대 구합니다!', '가톨릭대 체육관 / 가톨릭대 바스타즈 ',
        postId: 10,
        date: DateTime.utc(2023, 11, 30),
        place: '가톨릭대학교 체육관',
        clubName: '가톨릭대 바스타즈',
        phone: 'cuk_bastards',
        imagePath: imgDir + "map/map1.png"),
    Event('연습 상대 구합니다!', '가톨릭대 체육관 / 가톨릭대 바스타즈 ',
        postId: 11,
        date: DateTime.utc(2023, 11, 30),
        place: '가톨릭대학교 체육관',
        clubName: '가톨릭대 바스타즈',
        phone: 'cuk_bastards',
        imagePath: imgDir + "map/map1.png"),
  ],
};

final events = LinkedHashMap<DateTime, List<Event>>(
  equals: isSameDay,
)..addAll(eventSource);
