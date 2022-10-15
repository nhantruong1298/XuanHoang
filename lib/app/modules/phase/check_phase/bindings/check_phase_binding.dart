import 'package:example_nav2/app/modules/phase/check_phase/controllers/check_phase_controller.dart';
import 'package:get/get.dart';

class CheckPhaseBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(CheckPhaseController(Get.find()));
  }
}
