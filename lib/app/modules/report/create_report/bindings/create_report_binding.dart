import 'package:example_nav2/app/data/repository/file_repository.dart';
import 'package:example_nav2/app/data/services/api_service.dart';
import 'package:example_nav2/app/modules/report/create_report/controllers/create_report_controller.dart';
import 'package:get/get.dart';

class CreateReportBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(CreateReportController(
      Get.find<ApiService>(),
      Get.find<FileRepository>(),
    ));
  }
}
