import 'package:example_nav2/app/data/models/response/document_project_response.dart';
import 'package:example_nav2/app/data/services/api_service.dart';
import 'package:example_nav2/app/data/services/auth_service.dart';
import 'package:get/get.dart' hide Progress;

class DocumentController extends GetxController {
  final ApiService _apiService;
  final listDocument = <DocumentProjectResponse>[].obs;
  late String? idProject;
  DocumentController(this._apiService);

  @override
  void onInit() {
    super.onInit();
    _fetchDocument();
  }

  Future<void> _fetchDocument() async {
    idProject = AuthService.to.profile?.idProject;
    if (idProject != null) {
      final result = await _apiService.loadDocumentByIdProject(idProject ?? '');
      listDocument.value = result;
    }
  }
}
