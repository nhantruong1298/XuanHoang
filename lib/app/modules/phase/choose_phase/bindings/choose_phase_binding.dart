import 'package:example_nav2/app/modules/phase/choose_phase/controllers/choose_phase_controller.dart';
import 'package:get/get.dart';

class ChoosePhaseBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(ChoosePhaseController(Get.find()));
  }
}
