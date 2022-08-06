import 'package:example_nav2/app/data/models/progress.dart';
import 'package:example_nav2/app/data/services/api_service.dart';
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

      if (result is String?) {
        return;
      }

      final listJson = result as List<dynamic>?;
      final listResult = <Progress>[];
      if (listJson?.isNotEmpty == true) {
        for (var item in listJson!) {
          listResult.add(Progress.fromJson(item));
        }

        listProgress.value = listResult;
      }
    }
  }
}
