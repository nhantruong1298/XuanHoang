import 'dart:io';

import 'package:example_nav2/app/data/models/request/do_check_request.dart';
import 'package:example_nav2/app/data/models/request/edit_working_item_request.dart';
import 'package:example_nav2/app/data/models/working_item.dart';
import 'package:example_nav2/app/data/services/api_service.dart';
import 'package:example_nav2/app/modules/choose_job/views/choose_job_argument.dart';
import 'package:example_nav2/app/modules/choose_job/views/choose_job_view.dart';
import 'package:example_nav2/app/modules/create_signature/signature_data.dart';
import 'package:example_nav2/app/modules/report/summary_report/views/summary_report_argument.dart';
import 'package:example_nav2/app/modules/report/summary_report/views/summary_report_view.dart';
import 'package:example_nav2/resources/app_colors.dart';
import 'package:example_nav2/resources/app_formatter.dart';
import 'package:example_nav2/widgets/common/dialogs/confirm_dialog.dart';
import 'package:example_nav2/widgets/common/snackbar/snackbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart' hide Progress;
import 'package:loading_indicator/loading_indicator.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:uuid/uuid.dart';
import 'package:dio/dio.dart' as dio;
import 'package:image/image.dart' as img;

class ChooseJobController extends GetxController {
  // Init Overlay
  OverlayState? overlayState;
  OverlayEntry? overlayEntry;
  //
  final ApiService _apiService;
  final listJob = <WorkingItem>[].obs;
  List<WorkingItem> _listJobResult = [];
  String _searchText = '';
  String note = '';

  RxBool isLoading = false.obs;
  late String? termId;
  late String? instructionFile;
  ChooseJobController(this._apiService);

  @override
  void onInit() {
    super.onInit();
    final argument = Get.arguments as ChooseJobArgument;
    termId = argument.idWorkingTerm;
    instructionFile = argument.instructionFile;
    _fetchJobs();
  }

  Future<void> _fetchJobs() async {
    if (termId != null) {
      _listJobResult = await _apiService.getWorkingItemsByTermId(termId!);
      onSearchChanged(_searchText);
    }
  }

  void onInstructionFilePressed() {
    try {
      final url = _apiService.getImageFullUrl(instructionFile ?? '');

      launchUrlString(url, mode: LaunchMode.externalApplication);
    } catch (error) {
      print(error);
    }
  }

  // Future<void> editWorkingItem(WorkingItem item) async {
  //   try {
  //     await _apiService.editWorkingItem(EditWorkingItemRequest(
  //       description: item.description,
  //       idWorkingItem: item.idWorkingItem,
  //       idWorkingItemStatus: item.idWorkingItemStatus,
  //       isDeleted: item.isDeleted.toString(),
  //       itemName: item.itemName,
  //       idWorkingTerm: item.idWorkingTerm,
  //     ));

  //     await _fetchJobs();
  //   } catch (error) {
  //     print(error);
  //   }
  // }

  Future<void> doCheck(WorkingItem item, String reason) async {
    try {
      await _apiService.doCheck(DoCheckRequest(
        idWorkingItem: item.idWorkingItem,
        idWorkingItemStatus: item.idWorkingItemStatus,
        reason: reason,
        sessionId: Uuid().v4(),
      ));

      await _fetchJobs();
    } catch (error) {
      print(error);
    }
  }

  // Future<dynamic> loadWorkingItemImages(String idWorkingItem) async {
  //   try {
  //     final result =
  //         await _apiService.loadWorkingItemImagesHistory(idWorkingItem);
  //     print(result);
  //   } catch (error) {
  //     print(error);
  //   }
  // }

  Future<void> onRefreshData() async {
    await _fetchJobs();
  }

  void onSearchChanged(String value) {
    _searchText = value;
    if (_searchText.isEmpty) {
      listJob.value = _listJobResult;
    } else {
      listJob.value = _listJobResult
          .where((element) =>
              element.itemName
                  ?.toLowerCase()
                  .contains(_searchText.toLowerCase()) ==
              true)
          .toList();
    }
  }

  Future<void> _sendReport(SignatureData data) async {
    showLoadingDialog("Đang gửi báo cáo...");

    await Future.delayed(Duration(seconds: 1));

    final resizedImage = AppFormatter.resizeImage(data.image);

    final multipartFile = dio.MultipartFile.fromBytes(
        img.encodePng(resizedImage),
        filename: data.image.path.split(Platform.pathSeparator).last);

    final mapData = <String, dynamic>{};

    mapData.addAll({'File': multipartFile});

    final url = await _apiService.workingTermReport(
        termId ?? '', data.customerName, dio.FormData.fromMap(mapData));

    hideLoadingDialog();

    Get.dialog(SendReportSuccessDialog(
      onDownloadPressed: () async {
        await launchUrlString(_apiService.getImageFullUrl(url ?? ''),
            mode: LaunchMode.externalApplication);
      },
    ));

    // showConfirmDialog(
    //     title: 'Gửi báo cáo thành công',
    //     textConfirm: 'Xác nhận',
    //     onConfirm: () {
    //       Get.back();
    //       Get.back(result: true);
    //     });
  }

  Future<void> onCreateReport(String remark) async {
    showLoadingDialog("Đang tạo báo cáo ...");
    await Future.delayed(Duration(seconds: 1));
    try {
      final url =
          await _apiService.createWorkingReport(idWorkingTerm: termId ?? '');

      hideLoadingDialog();

      //Test url
      // String url =
      //     'https://drive.google.com/file/d/1GPMZXfU19K0wMACIJDhNShxwbOastQp5/view?usp=sharing';

      if (url == null) return;

      final signatureData = await Get.toNamed(SummaryReportView.routeName,
          arguments: SummaryReportArgument(
            isCreating: true,
            url: url,
            termId: termId ?? '',
          ));

      if (signatureData == null) return;

      await _sendReport(signatureData);
    } catch (error) {
      print(error);
      hideLoadingDialog();

      showSnackbar(
          message: AppFormatter.parseErrorToString(error),
          backgroundColor: AppColors.errorColor);
    }
  }

  void onShowFinalReportPressed() async {
    showLoadingDialog("Đang tạo báo cáo ...");
    await Future.delayed(Duration(seconds: 1));
    try {
      final url =
          await _apiService.loadFinalReport(idWorkingTerm: termId ?? '');

      hideLoadingDialog();

      if (url == null) return;

      final sendReport = await Get.toNamed(SummaryReportView.routeName,
          arguments: SummaryReportArgument(
            isCreating: false,
            url: url,
            termId: termId ?? '',
          ));

      if ((sendReport as bool?) == true) {
        await _sendFinalReport();
      }
    } catch (error) {
      hideLoadingDialog();
      print(error);

      showSnackbar(
          message: AppFormatter.parseErrorToString(error),
          backgroundColor: AppColors.errorColor);
    }
  }

  Future<void> _sendFinalReport() async {
    showLoadingDialog("Đang gửi báo cáo...");

    await Future.delayed(Duration(seconds: 1));

    await _apiService.sendFinalReport(idWorkingTerm: termId ?? '');

    hideLoadingDialog();

    Get.dialog(SendReportSuccessDialog());
  }

  void initOverlay(BuildContext context) {
    overlayState = Overlay.of(context);
  }

  void showLoadingDialog(String title) async {
    overlayEntry = OverlayEntry(builder: (_) {
      return _LoadingView(title: title);
    });

    overlayState?.insert(overlayEntry!);
  }

  void hideLoadingDialog() {
    try {
      overlayEntry?.remove();
    } catch (_) {}
  }
}

class _LoadingView extends StatelessWidget {
  final String? title;
  const _LoadingView({required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white.withOpacity(.4),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 16),
                margin: EdgeInsets.symmetric(horizontal: 16),
                width: double.infinity,
                height: 200,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15)),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(title ?? '',
                        style: TextStyle(
                          fontSize: 19.sp,
                          fontWeight: FontWeight.w700,
                        )),
                    const SizedBox(height: 30),
                    SizedBox(
                      height: 100,
                      child: LoadingIndicator(
                          indicatorType: Indicator.ballSpinFadeLoader,
                          colors: const [Colors.black],
                          strokeWidth: 2,
                          backgroundColor: Colors.white),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
