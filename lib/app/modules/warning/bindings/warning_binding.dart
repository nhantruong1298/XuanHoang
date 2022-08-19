import 'package:example_nav2/app/modules/warning/controllers/warning_controller.dart';
import 'package:get/get.dart';

class WarningBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(WarningController(Get.find()));
  }
}
