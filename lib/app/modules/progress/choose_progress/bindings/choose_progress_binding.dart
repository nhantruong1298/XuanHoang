import 'package:example_nav2/app/modules/progress/choose_progress/controllers/choose_progress_controller.dart';
import 'package:get/get.dart';


class ChooseProgressBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(ChooseProgressController(Get.find()));
  }
}
