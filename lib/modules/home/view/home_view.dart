import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:match/modules/home/view/today_match_view.dart';
import 'package:match/provider/routes/routes.dart';
import 'package:match/util/const/global_variable.dart';
import 'package:match/util/const/style/global_color.dart';
import 'package:match/util/const/style/global_text_styles.dart';
import 'package:match/main.dart';

import '../controller/home_controller.dart';
import '../widget/home_widget.dart';

class HomeScreen extends GetView<HomeController> {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 7.h),
            child: Column(
              children: [
                Row(
                  //1.제목 header
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      imgDir + "logo/iv_hustleHome_logo.png",
                      width: 75.w,
                    ),
                    SvgPicture.asset(iconDir + "ic_alarm_20.svg")
                  ],
                ),
                SizedBox(
                  height: 27.h,
                ),
                //3. 배너 section
                SizedBox(
                  height: 250.h,
                  child: CarouselSlider.builder(
                    itemCount: controller.adCount.value,
                    options: CarouselOptions(
                        autoPlay: true,
                        viewportFraction: 300.w / 136.h,
                        height: 300.h),
                    itemBuilder: (context, index, realIndex) {
                      return Container(
                          width: 300.w,
                          decoration: BoxDecoration(
                            //radius 수정
                            borderRadius: BorderRadius.circular(20.r),
                            image: DecorationImage(
                                fit: BoxFit.fitWidth,
                                image: AssetImage(
                                    'asset/image/iv_test_banner.png'),
                                colorFilter: ColorFilter.mode(
                                    //TODO: gradient 적용 detail 수정
                                    Colors.black.withOpacity(0.1),
                                    BlendMode.darken)),
                          ),
                          child: Stack(
                            children: [
                              Positioned(
                                  bottom: 25.h,
                                  right: 16.w,
                                  child: adIndexItem(
                                      total: controller.adCount.value,
                                      currentIdx: index + 1))
                            ],
                          ));
                    },
                  ),
                ),
                SizedBox(
                  height: 4.h,
                ),
                //4. 자신의 매치 section
                // 제목
                CommonSectionHeader(
                    title: '진행중인 경기',
                    destination: () async {
                      await Get.toNamed(Routes.home + Routes.burning_match_pay);
                    }),
                SizedBox(
                  height: 180.h,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return MyMatchItem(
                          destination: () async {
                            Get.toNamed(Routes.main_match);
                          },
                          title: "가톨릭대학교 총장배");
                    },
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        width: 20.w,
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
  }
