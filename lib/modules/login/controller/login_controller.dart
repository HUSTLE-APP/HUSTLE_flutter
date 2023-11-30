import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:async';
import 'package:kakao_flutter_sdk/kakao_flutter_sdk.dart';

class LoginController extends GetxController {

  Future<void> login() async {
    try {
      if (await isKakaoTalkInstalled()) {
        await UserApi.instance.loginWithKakaoTalk();
        print('카카오톡으로 로그인 성공');
      } else {
        await UserApi.instance.loginWithKakaoAccount();
        print('카카오계정으로 로그인 성공');
      }
    } catch (error) {
      print('카카오 로그인 실패 $error');

    }


  }


  @override
  Future<bool> logout() async {
    try {
      await UserApi.instance.unlink();
      return true;
    } catch (e) {
      return false;
    }
  }
}
