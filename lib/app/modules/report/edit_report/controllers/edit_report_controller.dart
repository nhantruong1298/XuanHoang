import 'package:example_nav2/app/data/models/request/incident_discussion_request.dart';
import 'package:example_nav2/app/data/models/response/report_detail_response.dart';
import 'package:example_nav2/app/data/services/api_service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EditReportController extends GetxController {
  final ApiService _apiService;
  Rx<ReportDetailResponse?>? reportDetail = ReportDetailResponse().obs;

  RxString incidentStatus = ''.obs;
  late final TextEditingController replyContentController;
  EditReportController(this._apiService);

  @override
  void onInit() {
    super.onInit();
    reportDetail?.value = Get.arguments as ReportDetailResponse?;
    replyContentController = TextEditingController();
  }

  @override
  void dispose() {
    replyContentController.dispose();
    super.dispose();
  }

  Future<void> editReport() async {
    try {
      if (reportDetail?.value != null) {
        int idIncident = int.parse(reportDetail?.value?.idIncident ?? '');
        final response = await _apiService.updateReportDetail(
            IncidentDiscussionRequest(
                idIncident: idIncident,
                replyContent: replyContentController.text,
                idIncidentStatus: reportDetail?.value?.idIncidentStatus ?? ''),
            []);

        print(response.toString());
      }
    } catch (error) {
      print(error);
    }
  }

  void onIdIncidentStatusChanged(String? idIncidentStatus) {
    if (idIncidentStatus != null) {
      incidentStatus.value = idIncidentStatus;
    }
  }
}
