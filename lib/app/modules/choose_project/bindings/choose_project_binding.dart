import 'package:example_nav2/app/modules/choose_project/controllers/choose_project_controller.dart';
import 'package:get/get.dart';


class ChooseProjectBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(ChooseProjectController(Get.find()));
  }
}
