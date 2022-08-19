import 'dart:io';

import 'package:example_nav2/app/data/models/response/document_project_response.dart';
import 'package:example_nav2/app/data/services/api_service.dart';
import 'package:example_nav2/app/data/services/auth_service.dart';
import 'package:example_nav2/resources/app_colors.dart';
import 'package:example_nav2/widgets/common/snackbar/snackbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart' hide Progress;
import 'package:image_picker/image_picker.dart';

class CreateReportController extends GetxController {
  final ApiService _apiService;
  final formKey = GlobalKey<FormBuilderState>();
  final String TITLE_KEY = 'title';
  final String CONTENT_KEY = 'content';
  final images = <File>[].obs;
  late final ImagePicker _imagePicker;
  CreateReportController(this._apiService);

  @override
  void onInit() {
    super.onInit();
    _imagePicker = ImagePicker();
  }

  void onCreateReportPressed() async {
    formKey.currentState?.validate();

    final title = formKey.currentState?.fields[TITLE_KEY]?.value ?? '';
    final content = formKey.currentState?.fields[CONTENT_KEY]?.value ?? '';

    String? message = formKey.currentState?.fields[TITLE_KEY]?.errorText;

    if (message != null) {
      showSnackbar(message: message, backgroundColor: AppColors.errorColor);
      return;
    }

    message = formKey.currentState?.fields[CONTENT_KEY]?.errorText;

    if (message != null) {
      showSnackbar(message: message, backgroundColor: AppColors.errorColor);
      return;
    }

    try {
      int idProject = int.parse(AuthService.to.profile?.idProject ?? '');
      final response = await _apiService.createProjectIncident(
          idProject: idProject,
          incidentDescription: content,
          incidentName: title,
          files: []);

      Get.back();
    } catch (error) {
      print(error);
    }
  }

  void onChooseImage(ImageSource? imageSource) async {
    if (imageSource != null) {
      try {
        final image = await _imagePicker.pickImage(source: imageSource);

        if (image != null) {
          images.add(File(image.path));
        }
      } catch (error) {
        print(error);
      }
    }
  }
}
