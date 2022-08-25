import 'dart:io';
import 'dart:typed_data';

import 'package:example_nav2/app/data/services/api_service.dart';
import 'package:example_nav2/resources/app_colors.dart';
import 'package:example_nav2/widgets/common/snackbar/snackbar.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:dio/dio.dart' as dio;
import 'package:image/image.dart' as img;

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
      final XFile? xFile = await _picker.pickImage(
        source: source,
      );

      if (xFile != null) {
        final file = File(xFile.path);
        final imageTemp = img.decodeImage(file.readAsBytesSync());
        final resizedImg = img.copyResize(
          imageTemp!,
          height: 720,
          interpolation: img.Interpolation.average,
        );
        final response = await _apiService.uploadDocheckImage(
          idWorkingItem ?? '',
          dio.FormData.fromMap(
            {
              'File': dio.MultipartFile.fromBytes(
                img.encodePng(resizedImg),
                filename: xFile.name,
              ),
            },
          ),
        );

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
