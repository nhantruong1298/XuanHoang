import 'package:example_nav2/app/data/data_source/data_storage.dart';
import 'package:example_nav2/app/data/repository/file_repository.dart';
import 'package:example_nav2/app/data/services/api_service.dart';
import 'package:example_nav2/app/data/services/auth_service.dart';
import 'package:get/get.dart';

void initDependencies() {
  //Service
  Get.put(ApiService());
  Get.put(AuthService());

  //Repository
  Get.put(FileRepository());

  //
  Get.put(DataStorage());
}
