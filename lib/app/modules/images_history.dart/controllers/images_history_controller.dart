import 'package:example_nav2/app/data/models/working_item.dart';
import 'package:example_nav2/app/data/services/api_service.dart';
import 'package:example_nav2/app/modules/images_history.dart/image_history_group.dart';
import 'package:example_nav2/resources/app_formatter.dart';
import 'package:get/get.dart';

class ImageHistoryController extends GetxController {
  final ApiService _apiService;
  final listHistory = <ImageHistoryGroup>[].obs;
  late final String? idWorkingItem;
  ImageHistoryController(this._apiService);
  late WorkingItem workingItem;
  get accessToken => _apiService.accessToken;

  @override
  void onInit() {
    super.onInit();
    workingItem = Get.arguments as WorkingItem;
    idWorkingItem = workingItem.idWorkingItem;
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
              fullName: history.fullName ?? '',
              listImage: picturesFullPath,
              createDate: AppFormatter.formatDate(history.createDate),
              idWorkingItemStatus: history.idWorkingItemStatus ?? ''));
        });
      }

      listHistory.value = result;
    }
  }

  void refreshData() async {
    await _fetchImagesHistory();
  }
}
