import 'package:example_nav2/app/data/models/response/image_history_response.dart';
import 'package:example_nav2/app/data/services/api_service.dart';
import 'package:example_nav2/app/modules/images_history.dart/image_history_group.dart';
import 'package:get/get.dart';

class ImageHistoryController extends GetxController {
  final ApiService _apiService;
  final listHistory = <ImageHistoryGroup>[].obs;
  late final String? idWorkingItem;
  ImageHistoryController(this._apiService);

  get accessToken => _apiService.accessToken;

  @override
  void onInit() {
    super.onInit();
    idWorkingItem = Get.arguments as String?;
    _fetchImagesHistory();
  }

  Future<void> _fetchImagesHistory() async {
    listHistory.clear();
    if (idWorkingItem != null) {
      final listHistoryResponse =
          await _apiService.loadWorkingItemImagesHistory(idWorkingItem!);

      final List<ImageHistoryGroup> result = [];

      if (listHistoryResponse?.isNotEmpty == true) {
        listHistoryResponse!.forEach((history) async {
          final pictures = history.pictures ?? [];
          final picturesFullPath = <String>[];

          pictures.forEach((picture) {
            picturesFullPath
                .add(_apiService.getImageFullUrl(picture.item ?? ''));
          });

          result.add(ImageHistoryGroup(
              fullName: history.fullName ?? '', listImage: picturesFullPath));
        });
      }

      listHistory.value = result;
    }
  }

  void refreshData() async {
    await _fetchImagesHistory();
  }
}
