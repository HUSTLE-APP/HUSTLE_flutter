import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../controller/match_controller.dart';
import '../widget/custom_component.dart';

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
        // bottomNavigationBar: BottomNavigationBar(
        //   type: BottomNavigationBarType.fixed,
        //   showUnselectedLabels: true,
        //   currentIndex: controller.selectIdx.value,
        //   onTap: (value) => controller.selectIdx.value = value,
        //   selectedItemColor: Colors.grey[900],
        //   unselectedItemColor: Colors.grey[300],
        //   items: [
        //     BottomNavigationBarItem(
        //       icon: Icon(Icons.home),
        //       label: '홈',
        //     ),
        //     BottomNavigationBarItem(
        //       icon: Icon(Icons.event),
        //       label: '이벤트',
        //     ),
        //     BottomNavigationBarItem(
        //       icon: Icon(Icons.person),
        //       label: 'MY',
        //     ),
        //   ],
        // ),
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
          // Image.asset(
          //   'asset/image/iv_test_contest.jpeg',
          //   width: 300.w,
          //   height: 200.h,
          //   fit: BoxFit.cover,
          // ),
          Container(
            width: 315.w,
            height: 161.h,
            decoration: ShapeDecoration(
              gradient: LinearGradient(
                begin: Alignment(0.78, -0.62),
                end: Alignment(-0.78, 0.62),
                colors: [Color(0xFF8AB4F4), Color(0xFF4D8DED)],
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
            ),
          ),
          SizedBox(height: 12.h),
          // 여기에 새로운 Container 추가
          for (var i = 0; i < 3; i++) CustomComponent(),
          // ElevatedButton(
          //   onPressed: () {
          //     // 신청하기 버튼 로직
          //   },
          //   child: const Text('신청하기'),
          // ),
        ],
      ),
    );
  }
}

