import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../util/components/global_app_bar.dart';
import '../../../util/components/global_modal.dart';
import '../../../util/const/style/global_color.dart';
import '../../../util/const/style/global_text_styles.dart';
import '../controller/create_controller.dart';

class CreateTournamentScreen extends StatelessWidget {
  final CreateController controller = Get.put(CreateController());

  CreateTournamentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
  // 아이콘 디렉토리
  final String iconDir = "assets/icons/";

  // 텍스트 컨트롤러들
    return Scaffold(
      appBar: CommonAppBar.basic("대회 생성"),
      body: Padding(
        padding: EdgeInsets.all(16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, // 왼쪽으로 정렬
          children: <Widget>[
            SizedBox(height: 10.h),
            Text(
              "대회명",
              style: AppTextStyles.L1Medium13,
            ),
            SizedBox(height: 10.h),
            CupertinoTextField(
              // 대회명 입력 필드
              controller: TextEditingController(text: controller.tournamentName.value),
              placeholder: '대회명을 입력해주세요',
              padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 12.w),
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(8.r),
                border: Border.all(color: AppColors.grey1),
              ),
              cursorColor: AppColors.black,
              style: AppTextStyles.T1Bold13.copyWith(color: AppColors.grey8),
            ),
            SizedBox(height: 26.h),
            Text(
              "대회 기간",
              style: AppTextStyles.L1Medium13,
            ),
            SizedBox(height: 10.h),
            CupertinoTextField(
              // 대회 기간 입력 필드
              controller: TextEditingController(text: controller.tournamentDate.value),
              placeholder: '대회 기간을 입력해주세요',
              padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 12.w),
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(8.r),
                border: Border.all(color: AppColors.grey1),
              ),
              cursorColor: AppColors.black,
              style: AppTextStyles.T1Bold13.copyWith(color: AppColors.grey8),
            ),
            SizedBox(height: 26.h),
            Text(
              "대회 장소",
              style: AppTextStyles.L1Medium13,
            ),
            SizedBox(height: 10.h),
            CupertinoTextField(
              // 대회 기간 입력 필드
              controller: TextEditingController(text: controller.tournamentLocation.value),
              placeholder: '대회 장소를 입력해주세요',
              padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 12.w),
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(8.r),
                border: Border.all(color: AppColors.grey1),
              ),
              cursorColor: AppColors.black,
              style: AppTextStyles.T1Bold13.copyWith(color: AppColors.grey8),
            ),
            SizedBox(height: 26.h),
            Text(
              "동아리 명",
              style: AppTextStyles.L1Medium13,
            ),
            SizedBox(height: 10.h),
            CupertinoTextField(
              // 대회 기간 입력 필드
              controller: TextEditingController(text: controller.tournamentTeam.value),
              placeholder: '동아리 명을 입력해주세요',
              padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 12.w),
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(8.r),
                border: Border.all(color: AppColors.grey1),
              ),
              cursorColor: AppColors.black,
              style: AppTextStyles.T1Bold13.copyWith(color: AppColors.grey8),
            ),
            SizedBox(height: 26.h),
            Text(
              "대표자 명",
              style: AppTextStyles.L1Medium13,
            ),
            SizedBox(height: 10.h),
            CupertinoTextField(
              // 대회 기간 입력 필드
              controller: TextEditingController(text: controller.tournamentHead.value),
              placeholder: '대표자 명을 입력해주세요',
              padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 12.w),
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(8.r),
                border: Border.all(color: AppColors.grey1),
              ),
              cursorColor: AppColors.black,
              style: AppTextStyles.T1Bold13.copyWith(color: AppColors.grey8),
            ),
            SizedBox(height: 16.h),
            // 기타 위젯들...
      Padding(
        padding: EdgeInsets.symmetric(vertical: 24.h),
        child: Row(
          children: [
            Expanded( // 버튼의 가로 크기를 확장합니다.
              child: ElevatedButton(
                onPressed: () {
                  // CommonDialog 모달 표시
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return CommonDialog(
                        title: "대회 신청 확인",
                        subtitle: "대회에 신청하시겠습니까?",
                        onGrant: () async {
                          // 확인 버튼을 눌렀을 때의 작업
                          Get.back(); // 모달 닫기
                        },
                        grantText: "확인",
                      );
                    },
                  );
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue,
                  padding: EdgeInsets.symmetric(vertical: 12.h),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: Text(
                  "신청하기",
                  style: TextStyle(
                    fontSize: 16.sp,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
            // 기타 위젯들...
          ],
        ),
      ),
    );
  }
}

// AppColors, AppTextStyles 등 필요한 스타일을 정의합니다.
