import 'package:example_nav2/app/modules/images_history.dart/controllers/images_history_controller.dart';
import 'package:get/get.dart';

class ImagesHistoryBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(ImageHistoryController(Get.find()));
  }
}
