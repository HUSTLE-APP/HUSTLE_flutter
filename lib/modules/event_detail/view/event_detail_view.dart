import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:match/modules/event_detail/controller/event_detail_controller.dart';
import 'package:match/util/components/global_app_bar.dart';
import 'package:match/util/const/style/global_color.dart';
import 'package:match/util/const/style/global_text_styles.dart';

import '../../../util/components/global_modal.dart';
import '../../home/widget/home_widget.dart';

///<h2>이벤트 상세 화면</h2>
///공지사항,알림과 유사한 구조
class EventDetailScreen extends GetView<EventDetailController> {
  const EventDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<EventDetailController>();

    return Scaffold(
        appBar: CommonAppBar.basic("모집중인 경기"),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Obx(
                () => ListView(
                  physics: const ScrollPhysics(),
                  children: [
                    ...controller.eventContents.value.map((content) {
                      return content["contentsType"] == "IMG"
                          ? Image.asset( // Image.network 대신 Image.asset 사용
                        content["contents"] as String,
                        width: double.infinity,
                        fit: BoxFit.cover, // 이미지를 적절히 조절하려면 BoxFit 사용
                      )
                          : Text(
                        content["contents"] as String,
                        style: AppTextStyles.S1SemiBold14,
                      );
                    }).toList(),
                    SizedBox(height: 16.h),
                    Text(
                      controller.eventInfo.value["title"] ?? "",
                      style: AppTextStyles.L1Medium13,
                    ),
                    Text(
                      "${controller.eventInfo.value["title1"]}",
                      style: AppTextStyles.S1SemiBold13.copyWith(
                        color: AppColors.grey3,
                      ),
                    ),
                    SizedBox(height: 10.h),
                    Text(
                      controller.eventInfo.value["date"] ?? "",
                      style: AppTextStyles.L1Medium13,
                    ),
                    Text(
                      "${controller.eventInfo.value["dateStart"]} ~ ${controller.eventInfo.value["dateEnd"]}",
                      style: AppTextStyles.S1SemiBold13.copyWith(
                        color: AppColors.grey3,
                      ),
                    ),
                    SizedBox(height: 10.h),
                    Text(
                      controller.eventInfo.value["location"] ?? "",
                      style: AppTextStyles.L1Medium13,
                    ),
                    Text(
                      "${controller.eventInfo.value["location1"]}",
                      style: AppTextStyles.S1SemiBold13.copyWith(
                        color: AppColors.grey3,
                      ),
                    ),
                    SizedBox(height: 10.h),
                    Text(
                      controller.eventInfo.value["name"] ?? "",
                      style: AppTextStyles.L1Medium13,
                    ),
                    Text(
                      "${controller.eventInfo.value["name1"]}",
                      style: AppTextStyles.S1SemiBold13.copyWith(
                        color: AppColors.grey3,
                      ),
                    ),
                    SizedBox(height: 10.h),
                    Text(
                      controller.eventInfo.value["phone"] ?? "",
                      style: AppTextStyles.L1Medium13,
                    ),
                    Text(
                      "${controller.eventInfo.value["phone1"]}",
                      style: AppTextStyles.S1SemiBold13.copyWith(
                        color: AppColors.grey3,
                      ),
                    ),
                    SizedBox(height: 20.h),
                    Text(
                      "${controller.eventInfo.value["startDate"]} ~ ${controller.eventInfo.value["endDate"]}",
                      style: AppTextStyles.S1SemiBold14
                    ),
                    SizedBox(height: 12.h),
                    Divider(
                      thickness: 1,
                      color: AppColors.divider1,
                    ),
                     Padding(
                      padding: EdgeInsets.symmetric(vertical: 24.h),
                       child: ElevatedButton(
                         onPressed: () {
                           // 여기에 버튼을 눌렀을 때의 동작을 정의합니다.
                           showDialog(
                             context: context,
                             builder: (BuildContext context) {
                               return CommonDialog(
                                 title: "신청 완료",
                                 subtitle: "신청이 완료되었습니다.",
                                 onGrant: () async {
                                   Get.back(); // 다이얼로그 닫기
                                   // 필요한 추가 작업을 여기에 구현합니다.
                                 },
                                 grantText: "확인",
                               );
                             },
                           );
                         },
                         style: ElevatedButton.styleFrom(
                           primary: Colors.blue, // 버튼 색상
                           padding: EdgeInsets.symmetric(vertical: 12.h),
                           shape: RoundedRectangleBorder(
                             borderRadius: BorderRadius.circular(20),
                           ),
                         ),
                         child: Text(
                           "신청하기",
                           style: TextStyle(
                             fontSize: 16.sp, // 텍스트 크기
                             color: Colors.white, // 텍스트 색상
                           ),
                         ),
                    ),
                     ),
                // Container(
                //   width: double.infinity,
                //   decoration: BoxDecoration(
                //     borderRadius: BorderRadius.circular(10.r),
                //   ),
                //   child: Image.network(tmpBackgroundImg2),
                // ),
                // SizedBox(
                //   height: 23.h,
                // ),
                // Text(
                //   "매칭 정보에 대한 텍스트를 입력합니다. 매칭 정보에 대한 텍스트를 입력합니다. 매칭 정보에 대한 텍스트를 입력합니다. 매칭 정보에 대한 텍스트를 입력합니다.매칭 정보에 대한 텍스트를 입력합니다. 매칭 정보에 대한 텍스트를 입력합니다. 매칭 정보에 대한 텍스트를 입력합니다. 매칭 정보에 대한 텍스트를 입력합니다.매칭 정보에 대한 텍스트를 입력합니다. 매칭 정보에 대한 텍스트를 입력합니다. 매칭 정보에 대한 텍스트를 입력합니다. 매칭 정보에 대한 텍스트를 입력합니다.매칭 정보에 대한 텍스트를 입력합니다. 매칭 정보에 대한 텍스트를 입력합니다. 매칭 정보에 대한 텍스트를 입력합니다. 매칭 정보에 대한 텍스트를 입력합니다.매칭 정보에 대한 텍스트를 입력합니다. 매칭 정보에 대한 텍스트를 입력합니다. 매칭 정보에 대한 텍스트를 입력합니다.",
                //   style: AppTextStyles.S1SemiBold14.copyWith(
                //     color: AppColors.grey7,
                //   ),
                // ),
              ],
            ),
          ),
        ));
  }
}
