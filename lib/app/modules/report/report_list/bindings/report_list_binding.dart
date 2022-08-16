import 'package:example_nav2/app/modules/report/report_list/controllers/report_list_controller.dart';
import 'package:get/get.dart';


class ReportListBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(ReportListController(Get.find(),Get.find()));
  }
}
