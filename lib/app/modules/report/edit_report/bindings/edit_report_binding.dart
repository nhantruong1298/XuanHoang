import 'package:example_nav2/app/modules/images_history.dart/controllers/images_history_controller.dart';
import 'package:example_nav2/app/modules/report/edit_report/controllers/edit_report_controller.dart';
import 'package:get/get.dart';

class EditReportBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(EditReportController(Get.find()));
  }
}
