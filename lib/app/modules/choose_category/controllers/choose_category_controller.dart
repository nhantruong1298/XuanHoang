import 'package:example_nav2/app/data/models/working_term.dart';
import 'package:example_nav2/app/data/services/api_service.dart';
import 'package:get/get.dart' hide Progress;
import 'package:url_launcher/url_launcher_string.dart';

class ChooseCategoryController extends GetxController {
  final ApiService _apiService;
  final listCategory = <WorkingTerm>[].obs;
  List<WorkingTerm> _listCategoryResult = [];
  String _searchText = '';
  ChooseCategoryController(this._apiService);
  late String? phaseId;

  @override
  void onInit() {
    super.onInit();
    phaseId = Get.arguments as String?;
    _fetchTerms();
  }

  Future<void> _fetchTerms() async {
    if (phaseId != null) {
      _listCategoryResult =
          await _apiService.getWorkingTermsByPhaseId(phaseId ?? '');

      onSearchChanged(_searchText);
    }
  }

  Future<void> onRefreshData() async {
    await _fetchTerms();
  }

  void onSearchChanged(String value) {
    _searchText = value;

    if (_searchText.isEmpty) {
      listCategory.value = _listCategoryResult;
    } else {
      listCategory.value = _listCategoryResult
          .where((element) =>
              element.termName
                  ?.toLowerCase()
                  .startsWith(_searchText.toLowerCase()) ==
              true)
          .toList();
    }
  }

  void onInfoPressed(String? instructionFile) {
    try {
      final url = _apiService.getImageFullUrl(instructionFile ?? '');

      launchUrlString(url);
    } catch (error) {
      print(error);
    }
  }

}
