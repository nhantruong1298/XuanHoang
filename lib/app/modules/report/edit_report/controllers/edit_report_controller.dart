import 'dart:io';

import 'package:example_nav2/app/data/models/enum/incident_status.dart';
import 'package:example_nav2/app/data/models/image_data.dart';
import 'package:example_nav2/app/data/models/request/incident_discussion_request.dart';
import 'package:example_nav2/app/data/models/response/report_detail_response.dart';
import 'package:example_nav2/app/data/services/api_service.dart';
import 'package:example_nav2/resources/app_colors.dart';
import 'package:example_nav2/widgets/common/dialogs/confirm_dialog.dart';
import 'package:example_nav2/widgets/common/snackbar/snackbar.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class EditReportController extends GetxController {
  final ApiService _apiService;
  // Rx<ReportDetailResponse?>? reportDetail = ReportDetailResponse().obs;
  RxBool isLoading = false.obs;
  String replyContent = '';
  int? idIncident;
  ReportDetailResponse? reportDetail;
  final imagesData = <ImageData>[].obs;
  final _imagePicker = ImagePicker();

  RxString idIncidentStatus = ''.obs;
  EditReportController(this._apiService);

  @override
  void onInit() {
    super.onInit();
    try {
      reportDetail = Get.arguments as ReportDetailResponse?;
      idIncident = int.parse(reportDetail?.idIncident ?? '');
    } catch (error) {
      idIncident = null;
    }
  }

  Future<void> editReport() async {
    if (idIncident == null) return;
    isLoading.value = true;
    try {
      final localImages = imagesData.where((item) => item.isLocalFile).toList();

      final List<File> localFile = [];

      if (localImages.isNotEmpty) {
        localImages.forEach((element) {
          localFile.add(element.file!);
        });
      }

      if (replyContent.isEmpty) {
        showSnackbar(
            message: 'Nội dung không được để trống',
            backgroundColor: AppColors.errorColor);
        return;
      }

      if (idIncidentStatus.isEmpty) {
        showSnackbar(
            message: 'Trạng thái không được để trống',
            backgroundColor: AppColors.errorColor);
        return;
      }

      final response = await _apiService.updateReportDetail(
        IncidentDiscussionRequest(
            idIncident: idIncident!,
            replyContent: replyContent,
            idIncidentStatus: idIncidentStatus.value),
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
    } catch (error) {
      showSnackbar(
          message: error.toString(), backgroundColor: AppColors.errorColor);
    } finally {
      isLoading.value = false;
    }
  }

  void onIdIncidentStatusChanged(String? idIncidentStatus) {
    if (idIncidentStatus != null) {
      this.idIncidentStatus.value = idIncidentStatus;
    }
  }

  void onReplyContentChanged(String value) {
    replyContent = value;
  }

  void onChooseImage(ImageSource? imageSource) async {
    if (imageSource != null) {
      isLoading.value = true;
      try {
        final image = await _imagePicker.pickImage(source: imageSource);

        if (image != null) {
          imagesData.add(ImageData(file: File(image.path)));
        }
      } catch (error) {
        print(error);
      } finally {
        isLoading.value = false;
      }
    }
  }
}
