import 'package:example_nav2/app/modules/choose_category/controllers/choose_category_controller.dart';
import 'package:get/get.dart';

class ChooseCategoryBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(ChooseCategoryController(Get.find()));
  }
}
