import 'package:example_nav2/app/data/repository/user_repository.dart';
import 'package:example_nav2/app/data/services/api_service.dart';
import 'package:example_nav2/app/data/services/auth_service.dart';
import 'package:get/get.dart';

void initDependencies() {
  //Service
  Get.put(ApiService());
  Get.put(AuthService());

  //Repository
  //Get.put(UserRepository(Get.find()));
}
