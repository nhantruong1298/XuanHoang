import 'package:example_nav2/app/modules/document/controllers/document_controller.dart';
import 'package:get/get.dart';

class DocumentBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(DocumentController(Get.find()));
  }
}
