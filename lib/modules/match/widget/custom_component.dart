import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:match/util/const/style/global_text_styles.dart';

import '../../../util/const/style/global_color.dart';
class CustomComponent extends StatelessWidget {
  const CustomComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Container(
      width: 315.w,
      height: 120.h, // 높이 수정
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 315.w,
            height: 28.h,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 28,
                  height: 28,
                  decoration: ShapeDecoration(
                    image: DecorationImage(
                      image: NetworkImage("https://via.placeholder.com/28x28"),
                      fit: BoxFit.fill,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14),
                    ),
                    shadows: [
                      BoxShadow(
                        color: Color(0x0C000000),
                        blurRadius: 4,
                        offset: Offset(0, 1),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                ),
                SizedBox(width: 8.w),
                Text(
                '가톨릭대학교 총장배 대회',
                style: AppTextStyles.body2Regular13,
              ),

              ],
            ),
          ),
          SizedBox(height: 12.h),
          Container(
            width: 315.w,
            height: 68.h,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 290.w,
                  height: 68.h,
                  padding: EdgeInsets.symmetric(horizontal: 8.w), // 좌우 간격
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center, // 가운데 정렬
                    children: [
                      Container(
                        width: 70,
                        height: 36,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 34,
                              top: 0,
                              child: Container(
                                width: 36,
                                height: 36,
                                decoration: ShapeDecoration(
                                  image: DecorationImage(
                                    image: NetworkImage("https://via.placeholder.com/36x36"),
                                    fit: BoxFit.fill,
                                  ),
                                  shape: OvalBorder(),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 0,
                              top: 0,
                              child: Container(
                                width: 36,
                                height: 36,
                                decoration: ShapeDecoration(
                                  image: DecorationImage(
                                    image: NetworkImage("https://via.placeholder.com/36x36"),
                                    fit: BoxFit.fill,
                                  ),
                                  shape: OvalBorder(
                                    side: BorderSide(
                                      width: 2,
                                      strokeAlign: BorderSide.strokeAlignOutside,
                                      color: Color(0xFFFFF6F3),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 10.w),
                      Container(
                        width: 172,
                        height: 38,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 0,
                              top: 17,
                              child: Container(
                                width: 69,
                                height: 21,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      left: 0,
                                      top: 3,
                                      child: Text(
                                        '바스타즈',
                                        style: TextStyle(
                                          color: Color(0xFF9F9F9F),
                                          fontSize: 10,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w400,
                                          height: 0,
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 60,
                                      top: 0,
                                      child: Text(
                                        '2',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Color(0xFF181829),
                                          fontSize: 14,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w500,
                                          height: 0,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              left: 103,
                              top: 17,
                              child: Container(
                                width: 68,
                                height: 21,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      left: 60,
                                      top: 0,
                                      child: Text(
                                        '7',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Color(0xFF181829),
                                          fontSize: 14,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w500,
                                          height: 0,
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 0,
                                      top: 3,
                                      child: Text(
                                        '버스타죠',
                                        style: TextStyle(
                                          color: Color(0xFF9F9F9F),
                                          fontSize: 10,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w400,
                                          height: 0,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              left: 84,
                              top: 17,
                              child: Text(
                                '-',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFF181829),
                                  fontSize: 14,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500,
                                  height: 0,
                                ),
                              ),
                            ),
                            Positioned(
                              left: 0,
                              top: 0,
                              child: Text(
                                '바스타즈  vs 버스타죠',
                                style: TextStyle(
                                  color: Color(0xFF181829),
                                  fontSize: 12,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500,
                                  height: 0,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ), //여기까지 사진 두개

                  decoration: ShapeDecoration(
                    color: Color(0xFFFFF6F3),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 0.50, color: Color(0xFFF4A58A)),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(16),
                        bottomLeft: Radius.circular(16),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 25.w,
                  height: 68.h,
                  decoration: ShapeDecoration(
                    gradient: LinearGradient(
                      begin: Alignment(0.78, -0.62),
                      end: Alignment(-0.78, 0.62),
                      colors: [Color(0xFFF4A58A), Color(0xFFED6B4E)],
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(16),
                        bottomRight: Radius.circular(16),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          // 추가적인 컨텐츠가 필요하면 여기에 포함시킬 수 있습니다.
        ],
      ),
    );
  }
}


