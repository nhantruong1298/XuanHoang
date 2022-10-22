import 'package:example_nav2/app/data/repository/file_repository.dart';
import 'package:example_nav2/app/modules/report/edit_report/controllers/edit_report_controller.dart';
import 'package:get/get.dart';

class EditReportBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(EditReportController(
      Get.find(),
      Get.find<FileRepository>(),
    ));
  }
}
