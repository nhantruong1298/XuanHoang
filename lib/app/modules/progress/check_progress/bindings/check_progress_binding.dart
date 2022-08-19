import 'package:example_nav2/app/modules/images_history.dart/controllers/images_history_controller.dart';
import 'package:example_nav2/app/modules/progress/check_progress/controllers/check_progress_controller.dart';
import 'package:get/get.dart';

class CheckProgressBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(CheckProgressController(Get.find()));
  }
}
