import 'package:example_nav2/app/modules/choose_image/controllers/choose_image_controller.dart';
import 'package:get/get.dart';

class ChooseImageBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(ChooseImageController(Get.find()));
  }
}
