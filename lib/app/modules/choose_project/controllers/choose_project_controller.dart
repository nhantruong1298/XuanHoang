import 'package:example_nav2/app/data/models/enum/project_type.dart';
import 'package:example_nav2/app/data/models/project.dart';
import 'package:example_nav2/app/data/services/api_service.dart';
import 'package:get/get.dart';

class ChooseProjectController extends GetxController {
  final ApiService _apiService;
  final listProject = <Project>[].obs;
  late final ProjectType projectType;
  ChooseProjectController(this._apiService);

  @override
  void onInit() {
    super.onInit();
    projectType = Get.arguments as ProjectType;
    _fetchProject();
  }

  Future<void> _fetchProject() async {
    switch (projectType) {
      case ProjectType.manual:
        {
          final result = await _apiService.getProjects();

          listProject.value = result;
        }
        break;
      case ProjectType.incident:
        {
          final result = await _apiService.loadProjectIncident();
          listProject.value = result;
        }

        break;
    }
  }
}
