import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:match/modules/event/view/ManagerPage.dart';
import 'package:match/modules/event/view/TeamList.dart';

import 'package:match/modules/event/view/event_view.dart';
import 'package:match/modules/home/view/home_view.dart';
import 'package:match/modules/mypage/view/mypage_view.dart';
import 'package:match/util/const/style/global_text_styles.dart';

import '../../../provider/routes/routes.dart';
import '../../../util/const/style/global_color.dart';
import '../../friendlyMatch/main_match.dart';
import '../controller/main_controller.dart';

class MainScren extends GetView<MainController> {
  const MainScren({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        body: [
          HomeScreen(),
          HomeScreen(),
          MainMatchScreen(),
          TeamList(),
          ManagerPage(),
        ][controller.selectIdx.value],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          showUnselectedLabels: true,
          currentIndex: controller.selectIdx.value,
          onTap: ((value) async {
            controller.selectIdx.value = value;
          }),
          selectedItemColor: Colors.blue,
          selectedLabelStyle: AppTextStyles.body3Bold12,
          unselectedItemColor: AppColors.grey3,
          unselectedLabelStyle:
              AppTextStyles.body3Bold12.copyWith(color: AppColors.grey3),
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: '홈'),
            BottomNavigationBarItem(icon: Icon(Icons.emoji_events), label: '대회'),
            BottomNavigationBarItem(icon: Icon(Icons.interests), label: '교류전'),
            BottomNavigationBarItem(icon: Icon(Icons.people_alt), label: '동아리'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: '마이페이지'),
          ],
        ),
      ),
    );
  }
}

