import 'package:example_nav2/app/modules/authenticate/change_password/controllers/change_password_controller.dart';
import 'package:get/get.dart';


class ChangePasswordBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(ChangePasswordController(Get.find()));
  }
}
