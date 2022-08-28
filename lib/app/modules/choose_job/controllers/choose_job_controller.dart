import 'dart:io';

import 'package:example_nav2/app/data/models/request/do_check_request.dart';
import 'package:example_nav2/app/data/models/request/edit_working_item_request.dart';
import 'package:example_nav2/app/data/models/working_item.dart';
import 'package:example_nav2/app/data/services/api_service.dart';
import 'package:example_nav2/app/modules/choose_job/views/choose_job_argument.dart';
import 'package:example_nav2/app/modules/create_signature/signature_data.dart';
import 'package:example_nav2/resources/app_formatter.dart';
import 'package:example_nav2/widgets/common/dialogs/confirm_dialog.dart';
import 'package:get/get.dart' hide Progress;
import 'package:url_launcher/url_launcher_string.dart';
import 'package:uuid/uuid.dart';
import 'package:dio/dio.dart' as dio;
import 'package:image/image.dart' as img;

class ChooseJobController extends GetxController {
  final ApiService _apiService;
  final listJob = <WorkingItem>[].obs;
  List<WorkingItem> _listJobResult = [];
  String _searchText = '';
  ChooseJobController(this._apiService);
  RxBool isLoading = false.obs;
  late String? termId;
  late String? instructionFile;

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

  Future<void> editWorkingItem(WorkingItem item) async {
    try {
      await _apiService.editWorkingItem(EditWorkingItemRequest(
        description: item.description,
        idWorkingItem: item.idWorkingItem,
        idWorkingItemStatus: item.idWorkingItemStatus,
        isDeleted: item.isDeleted.toString(),
        itemName: item.itemName,
        idWorkingTerm: item.idWorkingTerm,
      ));

      await _fetchJobs();
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

  Future<dynamic> loadWorkingItemImages(String idWorkingItem) async {
    try {
      final result =
          await _apiService.loadWorkingItemImagesHistory(idWorkingItem);
      print(result);
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

  void sendReport(SignatureData data) async {
    isLoading.value = true;
    try {
      final resizedImage = AppFormatter.resizeImage(data.image);

      final multipartFile = dio.MultipartFile.fromBytes(
          img.encodePng(resizedImage),
          filename: data.image.path.split(Platform.pathSeparator).last);

      final mapData = <String, dynamic>{};

      mapData.addAll({'File': multipartFile});

      await _apiService.workingTermReport(
          termId ?? '', data.customerName, dio.FormData.fromMap(mapData));

      showConfirmDialog(
          title: 'Gửi báo cáo thành công',
          textConfirm: 'Xác nhận',
          onConfirm: () {
            Get.back();
            Get.back(result: true);
          });
    } catch (error) {
      showConfirmDialog(
          title: 'Lỗi khi gửi báo cáo',
          textConfirm: 'Xác nhận',
          onConfirm: () {
            Get.back();
          });
    } finally {
      isLoading.value = false;
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
}
