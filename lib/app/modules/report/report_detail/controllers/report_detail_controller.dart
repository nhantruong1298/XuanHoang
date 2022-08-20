import 'package:example_nav2/app/data/models/response/report_detail_response.dart';
import 'package:example_nav2/app/data/services/api_service.dart';
import 'package:get/get.dart';

class ReportDetailController extends GetxController {
  final ApiService _apiService;
  final listImageData = <String>[].obs;
  Rx<ReportDetailResponse> reportDetail = ReportDetailResponse().obs;
  late String? idIncident;
  RxBool isLoading = false.obs;
  bool isUpdated = false;

  ReportDetailController(this._apiService);

  @override
  void onInit() {
    super.onInit();

    idIncident = Get.arguments as String?;
    _fetchReportDetail(idIncident);
  }

  Future<void> refreshData() async {
    listImageData.clear();
    isUpdated = true;
    await _fetchReportDetail(idIncident);
  }

  Future<void> _fetchReportDetail(String? idIncident) async {
    isLoading.value = true;
    try {
      final reportDetailResponse =
          await _apiService.loadReportDetail(idIncident ?? '');

      if (reportDetailResponse?.isNotEmpty == true) {
        reportDetail.value = reportDetailResponse!.first;
        if (reportDetail.value.pictures?.isNotEmpty == true) {
          reportDetail.value.pictures!.forEach((item) {
            listImageData.add(_apiService.getImageFullUrl(item.path ?? ''));
          });
        }
      }
    } catch (error) {
      print(error);
    }

    isLoading.value = false;
  }
}
