import 'package:example_nav2/app/modules/choose_category/controllers/choose_category_controller.dart';
import 'package:example_nav2/app/modules/choose_job/controllers/choose_job_controller.dart';
import 'package:get/get.dart';

class ChooseJobBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(ChooseJobController(Get.find()));
  }
}
