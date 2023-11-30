import 'package:get/get.dart';
import '../controller/match_controller.dart';

class MatchBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(MatchController());
  }
}
