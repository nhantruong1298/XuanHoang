import 'dart:io';

import 'package:example_nav2/app/data/services/api_service.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class ChooseImageController extends GetxController {
  final ApiService _apiService;
  final listImage = <XFile>[].obs;
  late final ImagePicker _picker;
  late String? idWorkingItem;
  ChooseImageController(this._apiService);

  @override
  void onInit() {
    super.onInit();
    idWorkingItem = Get.arguments as String?;
    _picker = ImagePicker();
  }

  Future<void> pickImage(ImageSource source) async {
    try {
      final XFile? xFile = await _picker.pickImage(source: source);

      if (xFile != null) {
        //_apiService.uploadDocheckImage(idWorkingItem ?? '', File(xFile.path));
        listImage.add(xFile);
      }
    } catch (error) {
      print(error);
    }
  }
}
