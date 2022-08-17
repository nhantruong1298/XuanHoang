import 'package:example_nav2/app/data/models/response/image_history_response.dart';
import 'package:example_nav2/app/data/services/api_service.dart';
import 'package:get/get.dart';

class ImageHistoryController extends GetxController {
  final ApiService _apiService;
  final listHistory = <ImageHistoryResponse>[].obs;
  final listImageData = <String>[].obs;
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
    if (idWorkingItem != null) {
      final listHistoryResult =
          await _apiService.loadWorkingItemImagesHistory(idWorkingItem!);

      if (listHistoryResult?.isNotEmpty == true) {
        listHistory.value = listHistoryResult!;

        listHistoryResult.forEach((item) async {
          final loadFileResult =
              _apiService.getImageFullUrl(item.picture ?? '');
          try {
            listImageData.add(loadFileResult);
          } catch (error) {
            print(error);
          }
        });
      }
    }
  }
}
