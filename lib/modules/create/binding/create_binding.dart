import 'package:get/get.dart';
import '../controller/create_controller.dart';

class CreateBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(CreateController());
  }
}
