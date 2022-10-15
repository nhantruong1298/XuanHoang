import 'package:example_nav2/app/modules/term/controllers/term_controller.dart';
import 'package:get/get.dart';

class TermBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(TermController(Get.find()));
  }
}
