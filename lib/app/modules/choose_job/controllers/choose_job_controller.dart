import 'package:example_nav2/app/data/models/working_item.dart';
import 'package:example_nav2/app/data/services/api_service.dart';
import 'package:get/get.dart' hide Progress;
import 'package:uuid/uuid.dart';
import 'package:xh_api/xh_api.dart';

class ChooseJobController extends GetxController {
  final ApiService _apiService;
  final listJob = <WorkingItem>[].obs;
  ChooseJobController(this._apiService);

  @override
  void onInit() {
    super.onInit();
    _fetchJobs();
  }

  Future<void> _fetchJobs() async {
    final termId = Get.arguments as String?;

    if (termId != null) {
      final result = await _apiService.getWorkingItemsByTermId(termId);

      if (result is String?) {
        return;
      }

      final listJson = result as List<dynamic>?;
      final listResult = <WorkingItem>[];
      if (listJson?.isNotEmpty == true) {
        for (var item in listJson!) {
          listResult.add(WorkingItem.fromJson(item));
        }

        listJob.value = listResult;
      }
    }
  }

  Future<void> editWorkingItem(WorkingItem item) async {
    final result = await _apiService.editWorkingItem(WorkingItemModel(
      (model) {
        model.description = item.description;
        model.idWorkingItem = item.idWorkingItem;
        model.idWorkingItemStatus = item.idWorkingItemStatus;
        model.isDeleted = item.isDeleted.toString();
        model.itemName = item.itemName;
        model.idWorkingTerm = item.idWorkingTerm;
      },
    ));

    await _fetchJobs();
  }

  Future<void> doCheck(WorkingItem item, String reason) async {
    final result = await _apiService.doCheck(DoCheckModel(
      (model) {
        model.idWorkingItem = item.idWorkingItem;
        model.idWorkingItemStatus = item.idWorkingItemStatus;
        // model.isDeleted = item.isDeleted.toString();
        model.reason = reason;
        model.sessionId = Uuid().v4();
        // model.itemName = item.itemName;
        // model.idWorkingTerm = item.idWorkingTerm;
      },
    ));

    print(result);
  }
}
