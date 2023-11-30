import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../model/event/event.dart';
import '../../../provider/routes/routes.dart';
import '../../../util/const/style/global_color.dart';
import '../../../util/const/style/global_text_styles.dart';
import '../../home/widget/home_widget.dart';

///<h2>이벤트 아이템 위젯</h2>
class EventWidget extends StatelessWidget {
  // 매개변수를 제거하고, hardcodedEvent를 사용합니다.
  const EventWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // 여기에서 hardcodedEvent를 사용합니다.
    final event = hardcodedEvent;

    return GestureDetector(
      onTap: () {
        Get.toNamed(Routes.event_detail, arguments: {"eventId": event.eventId});
      },
      child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(30.r),
              bottomRight: Radius.circular(30.r),
            ),
            border: Border.all(
              color: Colors.black, // 테두리 색상 지정
              width: 1.0, // 테두리 두께 지정
            ),
            ),
          child: Stack(
            children: [
              Positioned(
                top: 0,
                left: 0,
                right: 0,
                child: Image.asset(
                  'asset/image/iv_test_contest.jpeg',
                  fit: BoxFit.contain,
                ),
              ),
              Positioned(
                left: 18.w,
                bottom: 22.h,
                child: IntrinsicWidth(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        event.title,
                        style: AppTextStyles.T1Bold14.copyWith(
                            color: AppColors.black),
                      ),
                      SizedBox(height: 11.h),
                      Text(
                        event.smallTitle,
                        style: AppTextStyles.T1Bold12.copyWith(
                            color: Color(0xFF3B3B3B)),
                      ),
                      SizedBox(height: 11.h),
                      Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 8.w, vertical: 2.h),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.r),
                            color: AppColors.grey2,
                          ),
                          child: Text(
                            "진행중 ${event.startDate} - ${event.endDate}",
                            style: AppTextStyles.T1Bold10.copyWith(
                                color: Color(0xFF3B3B3B)),
                          )),
                    ],
                  ),
                ),
              )
            ],
          )),
    );
  }
}