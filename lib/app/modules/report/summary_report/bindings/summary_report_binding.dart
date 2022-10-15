import 'package:example_nav2/app/data/repository/file_repository.dart';
import 'package:example_nav2/app/modules/report/summary_report/controllers/summary_report_controller.dart';
import 'package:get/get.dart';

class SummaryReportBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(SummaryReportController(
      Get.find(),
      Get.find(),
      Get.find<FileRepository>(),
    ));
  }
}
