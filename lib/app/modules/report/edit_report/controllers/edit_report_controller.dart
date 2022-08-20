import 'dart:io';

import 'package:example_nav2/app/data/models/image_data.dart';
import 'package:example_nav2/app/data/models/request/incident_discussion_request.dart';
import 'package:example_nav2/app/data/models/response/report_detail_response.dart';
import 'package:example_nav2/app/data/services/api_service.dart';
import 'package:example_nav2/widgets/common/dialogs/confirm_dialog.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class EditReportController extends GetxController {
  final ApiService _apiService;
  Rx<ReportDetailResponse?>? reportDetail = ReportDetailResponse().obs;
  RxBool isLoading = false.obs;
  late String? replyContent;
  final imagesData = <ImageData>[].obs;
  final _imagePicker = ImagePicker();

  RxString incidentStatus = ''.obs;
  EditReportController(this._apiService);

  @override
  void onInit() {
    super.onInit();
    reportDetail?.value = Get.arguments as ReportDetailResponse?;
    incidentStatus.value = reportDetail?.value?.idIncidentStatus ?? '';
    replyContent = reportDetail?.value?.replyContent ?? '';
    loadImageData(reportDetail?.value?.pictures ?? []);
  }

  void loadImageData(List<ReportDetailPicture> list) {
    list.forEach((item) {
      imagesData
          .add(ImageData(path: _apiService.getImageFullUrl(item.path ?? '')));
    });
  }

  Future<void> editReport() async {
    isLoading.value = true;
    try {
      final localImages = imagesData.where((item) => item.isLocalFile).toList();

      final List<File> localFile = [];

      if (localImages.isNotEmpty) {
        localImages.forEach((element) {
          localFile.add(element.file!);
        });
      }

      if (reportDetail?.value != null) {
        int idIncident = int.parse(reportDetail?.value?.idIncident ?? '');
        final response = await _apiService.updateReportDetail(
          IncidentDiscussionRequest(
              idIncident: idIncident,
              replyContent: replyContent!,
              idIncidentStatus: reportDetail?.value?.idIncidentStatus ?? ''),
          localFile,
        );

        if (response != null) {
          showConfirmDialog(
              title: response.message ?? '',
              textConfirm: 'OK',
              onConfirm: () {
                Get.back();
                if ((response.message ?? '') == 'Success') {
                  Get.back(result: true);
                }
              });
        }
      }
    } catch (error) {
      print(error);
    }
    isLoading.value = false;
  }

  void onIdIncidentStatusChanged(String? idIncidentStatus) {
    if (idIncidentStatus != null) {
      incidentStatus.value = idIncidentStatus;
    }
  }

  void onReplyContentChanged(String? value) {
    replyContent = value;
  }

  void onChooseImage(ImageSource? imageSource) async {
    if (imageSource != null) {
      try {
        final image = await _imagePicker.pickImage(source: imageSource);

        if (image != null) {
          imagesData.add(ImageData(file: File(image.path)));
        }
      } catch (error) {
        print(error);
      }
    }
  }
}
