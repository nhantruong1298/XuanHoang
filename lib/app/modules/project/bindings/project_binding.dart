import 'package:example_nav2/app/modules/project/controllers/project_controller.dart';
import 'package:get/get.dart';

class ProjectBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(ProjectController(Get.find()));
  }
}
