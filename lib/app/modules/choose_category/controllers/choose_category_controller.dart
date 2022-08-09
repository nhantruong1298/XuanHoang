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
    _fetchTerms();
  }

  Future<void> _fetchTerms() async {
    final phaseId = Get.arguments as String?;

    if (phaseId != null) {
      final result = await _apiService.getWorkingTermsByPhaseId(phaseId);

      listCategory.value = result;
    }
  }
}
