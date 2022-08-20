import 'package:example_nav2/app/data/models/enum/project_type.dart';
import 'package:example_nav2/app/data/models/project.dart';
import 'package:example_nav2/app/data/services/api_service.dart';
import 'package:get/get.dart';

class ChooseProjectController extends GetxController {
  final ApiService _apiService;
  final listProject = <Project>[].obs;

  List<Project> _listProjectResult = [];
  String _searchText = '';
  late final ProjectType? projectType;
  ChooseProjectController(this._apiService);

  @override
  void onInit() {
    super.onInit();
    projectType = Get.arguments as ProjectType?;
    _fetchProject();
  }

  Future<void> _fetchProject() async {
    switch (projectType) {
      case ProjectType.manual:
        {
          _listProjectResult = await _apiService.getProjects();
          onSearchChanged(_searchText);
        }
        break;
      case ProjectType.incident:
        {
          _listProjectResult = await _apiService.loadProjectIncident();
          onSearchChanged(_searchText);
        }

        break;
      default:
        break;
    }
  }

  Future<void> onRefreshData() async {
    await _fetchProject();
  }

  void onSearchChanged(String searchText) {
    _searchText = searchText;

    if (_searchText.isEmpty) {
      listProject.value = _listProjectResult;
    } else {
      listProject.value = _listProjectResult
          .where((element) =>
              element.name
                  ?.toLowerCase()
                  .startsWith(_searchText.toLowerCase()) ==
              true)
          .toList();
    }
  }
}
