import 'package:example_nav2/app/data/models/response/report_detail_response.dart';
import 'package:example_nav2/app/data/models/result/report_detail_result.dart';
import 'package:example_nav2/app/data/services/api_service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ReportDetailController extends GetxController {
  final ApiService _apiService;
  // final listImageData = <String>[].obs;
  List<ReportDetailResponse> listResponse = [];
  final reportList = <ReportDetailResult>[].obs;
  late String? idIncident;
  RxBool isLoading = false.obs;
  bool isUpdated = false;

  ReportDetailController(this._apiService);
  PageController pageController = PageController();

  @override
  void onInit() {
    super.onInit();

    idIncident = Get.arguments as String?;
    _fetchReportDetail(idIncident);
  }

  Future<void> refreshData() async {
    // listImageData.clear();
    isUpdated = true;
    reportList.clear();
    await _fetchReportDetail(idIncident);
  }

  Future<void> _fetchReportDetail(String? idIncident) async {
    isLoading.value = true;
    try {
      listResponse = await _apiService.loadReportDetail(idIncident ?? '') ?? [];

      final listResult = <ReportDetailResult>[];

      listResponse.forEach((response) {
        final List<String> images = [];
        final result = ReportDetailResult(
          replyContent: response.replyContent,
          title: response.incidentName,
          userName: response.fullName,
        );

        if (response.pictures?.isNotEmpty == true) {
          response.pictures!.forEach((picture) {
            images.add(_apiService.getImageFullUrl(picture.path ?? ''));
          });
        }

        result.images = images;

        listResult.add(result);
      });

      pageController = PageController(
        initialPage: listResult.length,
      );

      reportList.value = listResult;
    } catch (error) {
      print(error);
    }

    isLoading.value = false;
  }

  void onNextPage() {
    pageController.nextPage(
        duration: Duration(milliseconds: 300), curve: Curves.easeIn);
  }

  void onPreviousPage() {
    pageController.previousPage(
        duration: Duration(milliseconds: 300), curve: Curves.easeIn);
  }
}
