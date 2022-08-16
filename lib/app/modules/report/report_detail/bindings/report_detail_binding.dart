import 'package:example_nav2/app/modules/report/report_detail/controllers/report_detail_controller.dart';
import 'package:get/get.dart';


class ReportDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(ReportDetailController(Get.find(),Get.find()));
  }
}
