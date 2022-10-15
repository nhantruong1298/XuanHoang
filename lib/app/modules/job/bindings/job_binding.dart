import 'package:example_nav2/app/modules/job/controllers/job_controller.dart';
import 'package:get/get.dart';

class JobBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(JobController(Get.find(), Get.find()));
  }
}
