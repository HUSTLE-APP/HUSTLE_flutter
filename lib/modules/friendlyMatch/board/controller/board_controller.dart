import 'package:get/get.dart';
import 'dart:async';

class PostController extends GetxController {
  final posts = <String>[].obs; // 게시물 목록

  void addPost(String post) {
    posts.add(post);
  }

  @override
  void onInit() {
    super.onInit();
  }
}
