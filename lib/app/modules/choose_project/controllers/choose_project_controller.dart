import 'package:example_nav2/app/data/models/project.dart';
import 'package:example_nav2/app/data/services/api_service.dart';
import 'package:get/get.dart';

class ChooseProjectController extends GetxController {
  final ApiService _apiService;
  final listProject = <Project>[].obs;
  ChooseProjectController(this._apiService);

  @override
  void onInit() {
    super.onInit();
    _fetchProject();
  }

  Future<void> _fetchProject() async {
    final result = await _apiService.getProjects();

    final listJson = result as List<dynamic>?;
    final listResult = <Project>[];
    if (listJson?.isNotEmpty == true) {
      for (var item in listJson!) {
        listResult.add(Project.fromJson(item));
      }

      listProject.value = listResult;
    }
  }
}
