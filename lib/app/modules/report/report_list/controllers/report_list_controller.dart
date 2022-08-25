import 'package:example_nav2/app/data/models/response/report_list_item_reponse.dart';
import 'package:example_nav2/app/data/services/api_service.dart';
import 'package:example_nav2/app/data/services/auth_service.dart';
import 'package:example_nav2/resources/app_colors.dart';
import 'package:example_nav2/widgets/common/dialogs/confirm_dialog.dart';
import 'package:example_nav2/widgets/common/snackbar/snackbar.dart';
import 'package:flutter/material.dart';
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

  Future<void> onRefreshData() async {
    await _fetchReportList();
  }

  Future<void> closeReport(String idIncident, String? incidentName) async {
    showConfirmDialog(
        title: 'Đóng sự cố: ${incidentName ?? ''}',
        onConfirm: () async {
          try {
            Get.back();
            await _apiService.closeReport(idIncident);
            await _fetchReportList();
          } catch (error) {
            showSnackbar(
                message: error.toString(),
                backgroundColor: AppColors.errorColor);
          }
        },
        textConfirm: 'Xác nhận',
        textCancel: 'Huỷ',
        onCancel: () {});
  }

  Future<void> refreshData() async {
    await _fetchReportList();
  }
}
