import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../controller/match_controller.dart';


class MatchScreen extends GetView<MatchController> {
  const MatchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
          () => Scaffold(
        body: Column(
          children: [
            Expanded(
              child: PageView.builder(
                itemCount: 3, // 농구 대회 카드 수
                itemBuilder: (context, index) {
                  return BasketballCardWidget(
                    posterUrl: '농구 대회 포스터 URL',
                    tournamentName: '대회 이름 $index',
                    registrationPeriod: '2023년 1월 1일 - 2023년 1월 31일',
                    participantCount: '참여 인원: ${100 + index}',
                    location: '참여 장소: 체육관 $index',
                  );
                },
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          showUnselectedLabels: true,
          currentIndex: controller.selectIdx.value,
          onTap: (value) => controller.selectIdx.value = value,
          selectedItemColor: Colors.grey[900],
          unselectedItemColor: Colors.grey[300],
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: '홈',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.event),
              label: '이벤트',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'MY',
            ),
          ],
        ),
      ),
    );
  }
}

class BasketballCardWidget extends StatelessWidget {
  final String posterUrl;
  final String tournamentName;
  final String registrationPeriod;
  final String participantCount;
  final String location;

  const BasketballCardWidget({
    Key? key,
    required this.posterUrl,
    required this.tournamentName,
    required this.registrationPeriod,
    required this.participantCount,
    required this.location,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: <Widget>[
          Image.asset(
            'asset/image/iv_test_contest.jpeg',
            width: 300.0, // 가로 크기 조정
            height: 200.0, // 세로 크기 조정
            fit: BoxFit.cover, // 이미지가 할당된 공간을 어떻게 채울지 정의 (옵션)
          ),
          Text(tournamentName),
          Text(registrationPeriod),
          Text(participantCount),
          Text(location),
          ElevatedButton(
            onPressed: () {
              // 신청하기 버튼 로직
            },
            child: const Text('신청하기'),
          ),
        ],
      ),
    );
  }
}
