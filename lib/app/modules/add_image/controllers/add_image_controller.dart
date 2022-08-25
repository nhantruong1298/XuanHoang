import 'dart:io';

import 'package:example_nav2/app/data/services/api_service.dart';
import 'package:example_nav2/resources/app_colors.dart';
import 'package:example_nav2/widgets/common/snackbar/snackbar.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class AddImageController extends GetxController {
  final ApiService _apiService;
  final listImage = <String>[].obs;
  late final ImagePicker _picker;
  late String? idWorkingItem;
  AddImageController(this._apiService);
  bool isUpdated = false;

  @override
  void onInit() {
    super.onInit();
    idWorkingItem = Get.arguments as String?;
    _picker = ImagePicker();
    fetchImages();
  }

  Future<void> fetchImages() async {
    listImage.clear();
    if (idWorkingItem != null) {
      final response =
          await _apiService.loadWorkingItemImages(idWorkingItem ?? '');

      if (response.isNotEmpty == true) {
        final imagesPath = response.map((e) => e.picture ?? '').toList();
        imagesPath.forEach((path) {
          listImage.add(_apiService.getImageFullUrl(path));
        });
      }
    }
  }

  Future<void> pickImage(ImageSource source) async {
    try {
      final XFile? xFile =
          await _picker.pickImage(source: source, imageQuality: 100);

      if (xFile != null) {
        final response = await _apiService.uploadDocheckImage(
            idWorkingItem ?? '', File(xFile.path));

        if (response.message == 'Success') {
          isUpdated = true;
          showSnackbar(
              message: 'Thêm ảnh thành công',
              backgroundColor: AppColors.green400);
          await fetchImages();
        } else {
          showSnackbar(
              message: response.message, backgroundColor: AppColors.errorColor);
        }
      }
    } catch (error) {
      print(error);
    }
  }
}
