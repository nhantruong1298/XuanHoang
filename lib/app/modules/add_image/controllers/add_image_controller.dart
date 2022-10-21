import 'dart:io';
import 'dart:isolate';
import 'dart:typed_data';
import 'dart:ui';
import 'package:example_nav2/app/data/models/isolate/upload_do_check_image_isolate.dart';
import 'package:example_nav2/app/data/models/response/do_check_image_response.dart';
import 'package:example_nav2/app/data/models/response/working_item_image_response.dart';
import 'package:example_nav2/app/data/models/working_item.dart';
import 'package:example_nav2/app/data/services/api_service.dart';
import 'package:example_nav2/app/data/services/isolate_service.dart';
import 'package:example_nav2/main.dart';
import 'package:example_nav2/resources/app_colors.dart';
import 'package:example_nav2/widgets/common/snackbar/snackbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_isolate/flutter_isolate.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:dio/dio.dart' as dio;
import 'package:image/image.dart' as img;

const String ADD_IMAGE_SEND_PORT_KEY = 'add_image_send_port';

class AddImageController extends GetxController {
  final ReceivePort _addImagePort = ReceivePort();
  FlutterIsolate? _addImageIsolate;
  final ApiService _apiService;
  AddImageController(this._apiService);
  final listImageUrl = <String>[].obs;
  late final ImagePicker _picker;

  bool isUpdated = false;
  RxBool isLoading = false.obs;
  late WorkingItem workingItem;
  // RxBool enableAddImage = true.obs;
  List<WorkingItemImageResponse> _listWorkingItemImage = [];

  @override
  void onInit() {
    super.onInit();
    _initListenPort();
    workingItem = Get.arguments as WorkingItem;
    _picker = ImagePicker();
    fetchImages();
  }

  @override
  void dispose() {
    IsolateNameServer.removePortNameMapping(ADD_IMAGE_SEND_PORT_KEY);
    super.dispose();
  }

  void _initListenPort() {
    IsolateNameServer.removePortNameMapping(ADD_IMAGE_SEND_PORT_KEY);

    IsolateNameServer.registerPortWithName(
        _addImagePort.sendPort, ADD_IMAGE_SEND_PORT_KEY);

    _addImagePort.listen((data) {
      isLoading.value = false;

      final result = data.toString();
      if (result == 'Success') {
        showSnackbar(
            message: 'Thêm ảnh thành công',
            backgroundColor: AppColors.green400);
        fetchImages();
      } else {
        showSnackbar(message: result, backgroundColor: AppColors.errorColor);
      }

      _addImageIsolate?.kill();
    });
  }

  Future<void> fetchImages() async {
    listImageUrl.clear();
    _listWorkingItemImage.clear();

    if (workingItem.idWorkingItem != null) {
      _listWorkingItemImage = await _apiService
          .loadWorkingItemImages(workingItem.idWorkingItem ?? '');

      // _listWorkingItemImage.forEach((item) {
      //   if (item.idWorkingItemHistoryPicture == null) {
      //     enableAddImage.value = false;
      //   }
      // });

      if (_listWorkingItemImage.isNotEmpty == true) {
        final imagesPath =
            _listWorkingItemImage.map((e) => e.picture ?? '').toList();
        imagesPath.forEach((path) {
          listImageUrl.add(_apiService.getImageFullUrl(path));
        });
      }
    }
  }

  Future<void> pickImage(ImageSource source) async {
    try {
      isLoading.value = true;

      final XFile? xFile = await _picker.pickImage(
        source: source,
      );

      if (xFile != null) {
        final file = File(xFile.path);

        Uint8List imageData = file.readAsBytesSync();

        _addImageIsolate = await FlutterIsolate.spawn(
            resizedAndUploadDoCheckImageIsolate,
            UploadDoCheckImageIsolateModel(
                    image: imageData,
                    idWorkingItem: workingItem.idWorkingItem ?? '',
                    sendPort: mainPort.sendPort,
                    imageName: xFile.name)
                .toJson());

        // final imageTemp = img.decodeImage(file.readAsBytesSync());
        //   final resizedImg = img.copyResize(
        //     imageTemp!,
        //     height: 720,
        //     interpolation: img.Interpolation.average,
        //   );
        //   final response = await _apiService.uploadDocheckImage(
        //     workingItem.idWorkingItem ?? '',
        //     dio.FormData.fromMap(
        //       {
        //         'File': dio.MultipartFile.fromBytes(
        //           img.encodePng(resizedImg),
        //           filename: xFile.name,
        //         ),
        //       },
        //     ),
        //   );

        //   if (response.message == 'Success') {
        //     isUpdated = true;
        //     showSnackbar(
        //         message: 'Thêm ảnh thành công',
        //         backgroundColor: AppColors.green400);
        //     await fetchImages();
        //   } else {
        //     showSnackbar(
        //         message: response.message, backgroundColor: AppColors.errorColor);
        //   }
      }
    } catch (error) {
      isLoading.value = false;
      showSnackbar(
          message: 'Thêm ảnh thất bại', backgroundColor: AppColors.errorColor);
    }
  }

  void onRemoveImage(int index) async {
    isLoading.value = true;
    try {
      final item = _listWorkingItemImage[index];
      final response = await _apiService.deleteDoCheckImage(
          idWorkingItem: item.idWorkingItem,
          picture: item.picture,
          description: item.description,
          idWorkingItemHistoryPicture: item.idWorkingItemHistoryPicture,
          isDeleted: "1",
          fullName: item.fullName,
          idWorkingItemStatus: item.idWorkingItemStatus,
          isReported: item.isReported,
          reason: item.reason,
          statusName: item.statusName);

      print(response.message);
      await fetchImages();
    } catch (error) {
      showSnackbar(
          message: error.toString(), backgroundColor: AppColors.errorColor);
    } finally {
      isLoading.value = false;
    }
  }
}
