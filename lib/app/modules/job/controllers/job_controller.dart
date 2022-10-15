import 'dart:io';
import 'dart:isolate';
import 'dart:ui';

import 'package:example_nav2/app/data/models/request/do_check_request.dart';
import 'package:example_nav2/app/data/models/working_item.dart';
import 'package:example_nav2/app/data/repository/file_repository.dart';
import 'package:example_nav2/app/data/services/api_service.dart';
import 'package:example_nav2/app/modules/job/views/job_argument.dart';
import 'package:example_nav2/app/modules/create_signature/signature_data.dart';
import 'package:example_nav2/app/modules/job/views/job_view.dart';
import 'package:example_nav2/app/modules/report/summary_report/views/summary_report_argument.dart';
import 'package:example_nav2/app/modules/report/summary_report/views/summary_report_view.dart';
import 'package:example_nav2/main.dart';
import 'package:example_nav2/resources/app_colors.dart';
import 'package:example_nav2/resources/app_formatter.dart';
import 'package:example_nav2/widgets/common/snackbar/snackbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_downloader/flutter_downloader.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart' hide Progress;
import 'package:loading_indicator/loading_indicator.dart';
import 'package:path_provider/path_provider.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:uuid/uuid.dart';
import 'package:dio/dio.dart' as dio;
import 'package:image/image.dart' as img;

class JobController extends GetxController {
  // Init Overlay
  OverlayState? overlayState;
  OverlayEntry? overlayEntry;
  //Init Downloader
  final ReceivePort downloaderPort = ReceivePort();
  final String reportPDFName = 'report.pdf';
  final String finalReportPDFName = 'final-report.dpf';
  //
  final ApiService _apiService;
  final FileRepository _fileRepository;
  late JobArgument _argument;

  var listJob = <WorkingItem>[].obs;
  List<WorkingItem> _listJob = [];
  String _searchText = '';

  bool? _isCreateReport;
  String? finalReportUrl;
  var isLoading = false.obs;

  JobController(this._apiService, this._fileRepository);

  @override
  void onInit() {
    super.onInit();
    _initDownloader();

    _argument = Get.arguments as JobArgument;
    _fetchJobs();
  }

  @override
  void dispose() {
    IsolateNameServer.removePortNameMapping(DOWNLOADER_SEND_PORT_KEY);
    super.dispose();
  }

  void _initDownloader() {
    IsolateNameServer.removePortNameMapping(DOWNLOADER_SEND_PORT_KEY);

    IsolateNameServer.registerPortWithName(
        downloaderPort.sendPort, DOWNLOADER_SEND_PORT_KEY);

    downloaderPort.listen((data) async {
      DownloadTaskStatus status = data[1];

      if (status == DownloadTaskStatus.failed ||
          status == DownloadTaskStatus.undefined) {
        hideLoadingDialog();
        return;
      }

      if (status == DownloadTaskStatus.complete) {
        hideLoadingDialog();
        if (Get.currentRoute == JobView.routeName) {
          if (_isCreateReport == null) {
            toggleLoading(false);
            return;
          }
          if (_isCreateReport!) {
            _goToCreateReportScreen();
          } else {
            _goToFinalReportScreen();
          }
        }
      }
    });

    FlutterDownloader.registerCallback(downloadCallback);
  }

  Future<void> _fetchJobs() async {
    _listJob =
        await _apiService.getWorkingItemsByTermId(_argument.idWorkingTerm);
    onSearchChanged(_searchText);
  }

  void onInstructionFilePressed() async {
    try {
      final url = _apiService.getImageFullUrl(_argument.instructionFile ?? '');

      await launchUrlString(url, mode: LaunchMode.externalApplication);
    } catch (error) {
      print(error);
    }
  }

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

  Future<void> onRefreshData() async {
    await _fetchJobs();
  }

  void onSearchChanged(String value) {
    _searchText = value;
    if (_searchText.isEmpty) {
      listJob.value = _listJob;
    } else {
      listJob.value = _listJob
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

    final resizedImage = AppFormatter.resizeImage(data.image);

    final multipartFile = dio.MultipartFile.fromBytes(
        img.encodePng(resizedImage),
        filename: data.image.path.split(Platform.pathSeparator).last);

    final mapData = <String, dynamic>{};

    mapData.addAll({'File': multipartFile});

    final url = await _apiService.workingTermReport(_argument.idWorkingTerm,
        data.customerName, dio.FormData.fromMap(mapData));

    hideLoadingDialog();

    _showSendReportSuccessDialog(onDownloadPressed: () {
      _downloadFinalReport(url);
    });
  }

  Future<void> _downloadFinalReport(String? url) async {
    if (url == null) return;
    _isCreateReport = null;
    toggleLoading(true);
    try {
      final appDir = await getExternalStorageDirectory();

      final fileName = url.split('/').last;

      await _fileRepository.downLoadPdf(
        fileName: fileName,
        savedDir: appDir?.path ?? '',
        url: url,
        openFileFromNotification: true,
        showNotification: true,
        saveInPublicStorage: true,
      );
    } catch (error) {
      toggleLoading(false);

      showSnackbar(
          message: AppFormatter.parseErrorToString(error),
          backgroundColor: AppColors.errorColor);
    }
  }

  void _showSendReportSuccessDialog({VoidCallback? onDownloadPressed}) {
    Get.dialog(
      SendReportSuccessDialog(
        onDownloadPressed: onDownloadPressed,
      ),
      barrierDismissible: false,
    );
  }

  Future<void> onCreateReport(String remark) async {
    _isCreateReport = true;

    showLoadingDialog("Đang tạo báo cáo ...");
    try {
      final response = await _apiService.createWorkingReport(
        idWorkingTerm: _argument.idWorkingTerm,
      );

      final String? url = response.url;

      if (url == null) return;

      final appDir = await getExternalStorageDirectory();

      await _fileRepository.downLoadPdf(
        fileName: reportPDFName,
        savedDir: appDir?.path ?? '',
        removeDuplicateFile: true,
        url: url,
      );
    } catch (error) {
      print(error);
      hideLoadingDialog();

      showSnackbar(
          message: AppFormatter.parseErrorToString(error),
          backgroundColor: AppColors.errorColor);
    }
  }

  Future<void> _goToCreateReportScreen() async {
    try {
      final appDir = await getExternalStorageDirectory();

      final signatureData = await Get.toNamed(SummaryReportView.routeName,
          arguments: SummaryReportArgument(
            isCreating: true,
            pdfLocalPath: '${appDir?.path ?? ''}/$reportPDFName',
            termId: _argument.idWorkingTerm,
          ));

      if (signatureData == null) return;

      await _sendReport(signatureData);
    } catch (error) {
      print(error);
      showSnackbar(
          message: AppFormatter.parseErrorToString(error),
          backgroundColor: AppColors.errorColor);
    }
  }

  Future<void> _goToFinalReportScreen() async {
    try {
      final appDir = await getExternalStorageDirectory();

      final result = await Get.toNamed(SummaryReportView.routeName,
          arguments: SummaryReportArgument(
              isCreating: _isCreateReport!,
              pdfLocalPath: '${appDir?.path ?? ''}/$finalReportPDFName',
              termId: _argument.idWorkingTerm,
              pdfUrl: finalReportUrl));

      if ((result as bool?) == true) {
        await _sendFinalReport();
      }
    } catch (error) {
      print(error);

      hideLoadingDialog();
      showSnackbar(
          message: AppFormatter.parseErrorToString(error),
          backgroundColor: AppColors.errorColor);
    }
  }

  void onShowFinalReportPressed() async {
    _isCreateReport = false;

    showLoadingDialog("Đang tạo báo cáo ...");
    try {
      final response = await _apiService.loadFinalReport(
          idWorkingTerm: _argument.idWorkingTerm);

      finalReportUrl = response.url;

      if (finalReportUrl == null) return;

      final appDir = await getExternalStorageDirectory();

      await _fileRepository.downLoadPdf(
        fileName: finalReportPDFName,
        savedDir: appDir?.path ?? '',
        url: finalReportUrl!,
        removeDuplicateFile: true,
      );
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

    await _apiService.sendFinalReport(idWorkingTerm: _argument.idWorkingTerm);

    hideLoadingDialog();

    _showSendReportSuccessDialog();
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

  void toggleLoading(bool value) {
    isLoading.value = value;
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

    // Future<dynamic> loadWorkingItemImages(String idWorkingItem) async {
  //   try {
  //     final result =
  //         await _apiService.loadWorkingItemImagesHistory(idWorkingItem);
  //     print(result);
  //   } catch (error) {
  //     print(error);
  //   }
  // }

