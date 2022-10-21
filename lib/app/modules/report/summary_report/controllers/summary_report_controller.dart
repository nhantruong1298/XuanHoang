import 'dart:io';
import 'dart:isolate';
import 'dart:ui';
import 'dart:ui';

import 'package:example_nav2/app/data/repository/file_repository.dart';
import 'package:example_nav2/app/data/services/api_service.dart';
import 'package:example_nav2/app/data/services/auth_service.dart';
import 'package:example_nav2/app/modules/report/summary_report/views/summary_report_argument.dart';
import 'package:example_nav2/main.dart';
import 'package:example_nav2/resources/app_colors.dart';
import 'package:example_nav2/resources/app_formatter.dart';
import 'package:example_nav2/widgets/common/snackbar/snackbar.dart';
import 'package:flutter_downloader/flutter_downloader.dart';
import 'package:get/get.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';

class SummaryReportController extends GetxController {
  final ApiService _apiService;
  final AuthService _authService;
  final FileRepository _fileRepository;
  late final SummaryReportArgument argument;
  ReceivePort _downLoaderPort = ReceivePort();
  SummaryReportController(
      this._apiService, this._authService, this._fileRepository);

  var isLoading = false.obs;

  @override
  void dispose() {
    IsolateNameServer.removePortNameMapping(
        DOWNLOAD_FINAL_REPORT_SEND_PORT_KEY);
    super.dispose();
  }

  @override
  void onInit() {
    super.onInit();
    _initDownloader();
    argument = Get.arguments as SummaryReportArgument;
  }

  void _initDownloader() {
    IsolateNameServer.removePortNameMapping(
        DOWNLOAD_FINAL_REPORT_SEND_PORT_KEY);

    IsolateNameServer.registerPortWithName(
        _downLoaderPort.sendPort, DOWNLOAD_FINAL_REPORT_SEND_PORT_KEY);

    _downLoaderPort.listen((data) async {
      DownloadTaskStatus status = data[1];

      if (status == DownloadTaskStatus.failed ||
          status == DownloadTaskStatus.undefined) {
        toggleLoading(false);
        return;
      }

      if (status == DownloadTaskStatus.complete) {
        toggleLoading(false);
      }
    });
  }

  Future<void> onDownloadReport() async {
    toggleLoading(true);
    try {
      final appDir = await getExternalStorageDirectory();

      final fileName = argument.pdfUrl!.split('/').last;

      await _fileRepository.requestStoragePermission();

      await _fileRepository.downLoadPdf(
        fileName: fileName,
        savedDir: appDir?.path ?? '',
        url: argument.pdfUrl!,
        openFileFromNotification: true,
        showNotification: true,
        saveInPublicStorage: true,
      );
    } catch (error) {
      toggleLoading(false);

      print(error);

      showSnackbar(
          message: AppFormatter.parseErrorToString(error),
          backgroundColor: AppColors.errorColor);
    }
  }

  void toggleLoading(bool value) {
    isLoading.value = value;
  }
}
