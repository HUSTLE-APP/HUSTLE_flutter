import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../create/view/create_view.dart';
import '../../event/view/event_view.dart';
import '../controller/match_controller.dart';
import '../widget/custom_component.dart';
import '../widget/filter.dart';

class MatchScreen extends GetView<MatchController> {
  const MatchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4, // 탭의 수
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white, // AppBar 배경색 변경
          title: Text(
            '경기 모아보기',
            style: TextStyle(color: Colors.black), // AppBar 타이틀 글자색 변경
          ),
          actions: <Widget>[
            GestureDetector(
              onTap: () {
                // 경기 생성 뷰로 이동하는 로직을 구현합니다.
                Get.to(() => CreateTournamentScreen());
              },
              child: Container(
                width: 36.w,
                height: 24.h,
                padding: EdgeInsets.all(8.h), // SVG 아이콘과 컨테이너의 패딩
                child: SvgPicture.asset(
                  'asset/image/icon/plus.svg', // SVG 파일 경로
                  color: Colors.black, // SVG 아이콘 색상
                ),
              ),
            ),
            SizedBox(width: 8.w), // 버튼과 화면 끝 사이의 공간
            GestureDetector(
              onTap: () {
                // 경기 생성 뷰로 이동하는 로직을 구현합니다.
                Get.to(() => const EventScreen());
              },
              child: Container(
                width: 36.w,
                height: 24.h,
                padding: EdgeInsets.all(8.h), // SVG 아이콘과 컨테이너의 패딩
                child: SvgPicture.asset(
                  'asset/image/icon/basketball.svg', // SVG 파일 경로
                  color: Colors.black, // SVG 아이콘 색상
                ),
              ),
            ),
            SizedBox(width: 8.w), // 버튼과 화면 끝 사이의 공간
          ],
          // 다른 AppBar 설정들...
          bottom: PreferredSize(
            preferredSize: Size(360.w, 60.h),
            child: Container( // TabBar 배경 스타일 적용
              color: Color(0xFFFFF6F3), // 탭바의 배경색
              child: TabBar(
                isScrollable: true, // 탭이 여러 개일 경우 스크롤 가능
                indicatorSize: TabBarIndicatorSize.tab, // 인디케이터 크기를 탭에 맞춤
                indicator: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment(0.78, -0.62),
                    end: Alignment(-0.78, 0.62),
                    colors: [Color(0xFFF4A58A), Color(0xFFED6B4E)],
                  ),
                  borderRadius: BorderRadius.circular(33), // 인디케이터의 둥근 모서리
                ),
                labelColor: Colors.white, // 선택된 탭의 글자색
                unselectedLabelColor: Colors.grey, // 선택되지 않은 탭의 글자색
                tabs: [
                  Tab(text: '전체'),
                  Tab(text: '모집중'),
                  Tab(text: '진행중'),
                  Tab(text: '완료'),
                ],
              ),
            ),
          ),
        ),
        body: TabBarView(
          children: [
            BasketballCardWidget(), // 전체
            BasketballCardWidget(), // 모집중
            BasketballCardWidget(), // 진행중
            BasketballCardWidget(), // 완료
          ],
        ),          // 여기에 기존 Scaffold의 나머지 부분을 넣습니다.
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
    );
  }
}

class BasketballCardWidget extends StatelessWidget {
  const BasketballCardWidget({Key? key}) : super(key: key);

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
          // Container(
          //   width: 315.w,
          //   height: 161.h,
          //   decoration: ShapeDecoration(
          //     gradient: LinearGradient(
          //       begin: Alignment(0.78, -0.62),
          //       end: Alignment(-0.78, 0.62),
          //       colors: [Color(0xFF8AB4F4), Color(0xFF4D8DED)],
          //     ),
          //     shape: RoundedRectangleBorder(
          //       borderRadius: BorderRadius.circular(16),
          //     ),
          //   ),
          // ),
          // 여기에 새로운 Container 추가
          // Filter(),
          SizedBox(height: 12.h),
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

