import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kakao_flutter_sdk/kakao_flutter_sdk_talk.dart';

import 'package:match/util/const/global_variable.dart';
import '../../../util/const/style/global_color.dart';
import '../../../provider/routes/routes.dart';
import '../controller/login_controller.dart';

class LoginScreen extends GetView<LoginController> {
  // const LoginScreen({super.key});
  const LoginScreen({Key? key}) : super(key: key);

  // Future logout() async {
  //   await _loginController.logout();
  //   isLogined = false;
  //   user = null;
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        // Center the Column
        child: Column(
          mainAxisAlignment:
              MainAxisAlignment.center, // Center the children vertically
          children: [
            SizedBox(
              height: 150.h,
            ),
            Image.asset(
              imgDir + "logo/iv_hustle_logo.png", // 허슬로고로 변경
              width: 120.w,
            ),
            SizedBox(
              height: 150.h,
            ),
            kakaoLogin(),
            SizedBox(
              height: 12.h,
            ),
          ],
        ),
      ),
    );
  }

  @override
  kakaoLogin() {
    // final _loginController = Get.find<LoginController>();
    return GestureDetector(
      onTap: () {
        // bool isLogined = await _loginController.login();
        // if (isLogined) {
        //   User? user = await UserApi.instance.me();
        //   Get.offNamed(Routes.home);
        // } else {
        //   Get.offNamed(Routes.login);
        // }
        Get.toNamed(Routes.main);
      },
      child: Container(
        width: 300.w,
        height: 46.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0), // Set border radius to 10px
          color: AppColors.kakaoBtn, // Button's background color
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(width: 24.w), // Add some spacing between the icon and text
            SvgPicture.asset(
                iconDir + "login/ic_kakao_19.svg"), // Include your SVG here
            SizedBox(width: 80.w), // Add some spacing between the icon and text
            Text(
              '카카오 로그인',
              style: TextStyle(
                color: AppColors.black,
                fontSize: 14.sp,
                fontWeight: FontWeight.w600,
                fontFamily: 'Apple SD Gothic Neo',
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
/*child: GestureDetector(
onTap: () {
Get.toNamed(Routes.home);
},
child: Text('login'))*/