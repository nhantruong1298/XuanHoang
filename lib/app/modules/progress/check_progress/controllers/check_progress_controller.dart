import 'package:example_nav2/app/data/services/api_service.dart';
import 'package:example_nav2/app/modules/choose_category/views/choose_category_view.dart';
import 'package:get/get.dart';

class CheckProgressController extends GetxController {
  final ApiService _apiService;
  late String? phaseId;
  CheckProgressController(this._apiService);

  @override
  void onInit() {
    super.onInit();
    phaseId = Get.arguments as String?;
  }

  void onDetailButtonPressed() {
    Get.toNamed(ChooseCategoryView.routeName, arguments: phaseId);
  }
}
