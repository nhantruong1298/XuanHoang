import 'package:example_nav2/app/data/data_source/data_storage.dart';
import 'package:example_nav2/app/data/services/api_service.dart';
import 'package:get/get.dart';

import '../controllers/login_controller.dart';

class LoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(LoginController(Get.find<ApiService>(),Get.find<DataStorage>()));
  }
}
