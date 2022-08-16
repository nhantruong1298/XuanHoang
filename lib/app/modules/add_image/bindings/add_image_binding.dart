import 'package:example_nav2/app/modules/add_image/controllers/add_image_controller.dart';
import 'package:get/get.dart';

class AddImageBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(AddImageController(Get.find()));
  }
}
