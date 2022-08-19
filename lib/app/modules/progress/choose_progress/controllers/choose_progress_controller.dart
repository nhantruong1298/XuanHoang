import 'package:example_nav2/app/data/models/enum/account_type.dart';
import 'package:example_nav2/app/data/models/progress.dart';
import 'package:example_nav2/app/data/services/api_service.dart';
import 'package:example_nav2/app/data/services/auth_service.dart';
import 'package:example_nav2/app/modules/choose_category/views/choose_category_view.dart';
import 'package:example_nav2/app/modules/progress/check_progress/views/check_progress_view.dart';
import 'package:get/get.dart' hide Progress;

class ChooseProgressController extends GetxController {
  final ApiService _apiService;
  final listProgress = <Progress>[].obs;
  ChooseProgressController(this._apiService);

  @override
  void onInit() {
    super.onInit();
    _fetchProgress();
  }

  Future<void> _fetchProgress() async {
    final id = Get.arguments as String?;

    if (id != null) {
      final result = await _apiService.getPhaseByProjectId(id);

      listProgress.value = result;
    }
  }

  void onProgressItemPressed(Progress item) {
    if (AuthService.to.accountType == AccountType.staff) {
      Get.toNamed(ChooseCategoryView.routeName, arguments: item.idPhase);
    } else {
      Get.toNamed(CheckProgressView.routeName, arguments: item.idPhase);
    }
  }
}
