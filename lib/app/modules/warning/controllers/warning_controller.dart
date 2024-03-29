import 'package:example_nav2/app/data/models/response/warning_project_response.dart';
import 'package:example_nav2/app/data/services/api_service.dart';
import 'package:get/get.dart' hide Progress;
import 'package:url_launcher/url_launcher_string.dart';

class WarningController extends GetxController {
  final ApiService _apiService;
  final listWarning = <WarningProjectResponse>[].obs;
  late String? idProject;
  WarningController(this._apiService);

  @override
  void onInit() {
    super.onInit();
    idProject = Get.arguments as String?;
    _fetchWarning();
  }

  Future<void> _fetchWarning() async {
    if (idProject != null) {
      final result = await _apiService.loadWarningByIdProject(idProject ?? '');
      listWarning.value = result;
    }
  }

  Future<void> onRefreshData() async {
    await _fetchWarning();
  }

  void onWarningItemPressed(WarningProjectResponse item) {
    launchUrlString(_apiService.getImageFullUrl(item.documentPath ?? ''),
        mode: LaunchMode.externalApplication);
  }
}
