import 'package:example_nav2/app/data/models/enum/account_type.dart';
import 'package:example_nav2/app/data/models/project.dart';
import 'package:example_nav2/app/data/models/response/report_detail_response.dart';
import 'package:example_nav2/app/data/services/api_service.dart';
import 'package:example_nav2/app/data/services/auth_service.dart';
import 'package:get/get.dart';

class ReportDetailController extends GetxController {
  final ApiService _apiService;
  final AuthService _authService;
  Rx<ReportDetailResponse> reportDetail = ReportDetailResponse().obs;

  ReportDetailController(this._apiService, this._authService);

  @override
  void onInit() {
    super.onInit();

    final idIncident = Get.arguments as String?;
    _fetchReportDetail(idIncident);
  }

  Future<void> _fetchReportDetail(String? idIncident) async {
    try {
      if (_authService.accountType == AccountType.staff) {
        final reportDetailResponse =
            await _apiService.loadReportDetail(idIncident ?? '');

        if (reportDetailResponse?.isNotEmpty == true) {
          reportDetail.value = reportDetailResponse![0];
        }
      }
    } catch (error) {
      print(error);
    }
  }
}
