import 'package:example_nav2/app/data/models/working_term.dart';
import 'package:example_nav2/app/data/services/api_service.dart';
import 'package:get/get.dart' hide Progress;

class ChooseCategoryController extends GetxController {
  final ApiService _apiService;
  final listCategory = <WorkingTerm>[].obs;
  ChooseCategoryController(this._apiService);

  @override
  void onInit() {
    super.onInit();
    _fetchProgress();
  }

  Future<void> _fetchProgress() async {
    final phaseId = Get.arguments as String?;

    if (phaseId != null) {
      final result = await _apiService.getWorkingTermsByPhaseId(phaseId);

     
        if (result is String?) {
          return;
        }

        final listJson = result as List<dynamic>?;
        final listResult = <WorkingTerm>[];
        if (listJson?.isNotEmpty == true) {
          for (var item in listJson!) {
            listResult.add(WorkingTerm.fromJson(item));
          }

          listCategory.value = listResult;
        }

    }
  }
}
