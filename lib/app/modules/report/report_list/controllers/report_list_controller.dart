import 'package:example_nav2/app/data/models/response/report_list_item_reponse.dart';
import 'package:example_nav2/app/data/models/response/update_report_response.dart';
import 'package:example_nav2/app/data/services/api_service.dart';
import 'package:example_nav2/app/data/services/auth_service.dart';
import 'package:get/get.dart';

class ReportListController extends GetxController {
  final ApiService _apiService;
  final AuthService _authService;
  final reportList = <ReportListItemResponse>[].obs;
  late final String? idProject;

  ReportListController(this._apiService, this._authService);

  @override
  void onInit() {
    super.onInit();
    idProject = Get.arguments as String?;
    _fetchReportList();
  }

  Future<void> _fetchReportList() async {
    try {
      final result = await _apiService.loadReportList(idProject ?? '');

      reportList.value = result;
    } catch (error) {
      print(error);
    }
  }

  Future<void> closeReport(String idIncident) async {
    final response = await _apiService.closeReport(idIncident);

    print(response);

    await _fetchReportList();
  }
}
