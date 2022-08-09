import 'package:example_nav2/app/data/models/request/do_check_request.dart';
import 'package:example_nav2/app/data/models/request/edit_working_item_request.dart';
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
      listJob.value = result;
    }
  }

  Future<void> editWorkingItem(WorkingItem item) async {
    try {
      await _apiService.editWorkingItem(EditWorkingItemRequest(
        description: item.description,
        idWorkingItem: item.idWorkingItem,
        idWorkingItemStatus: item.idWorkingItemStatus,
        isDeleted: item.isDeleted.toString(),
        itemName: item.itemName,
        idWorkingTerm: item.idWorkingTerm,
      ));

      await _fetchJobs();
    } catch (error) {
      print(error);
    }
  }

  Future<void> doCheck(WorkingItem item, String reason) async {
    try {
      final result = await _apiService.doCheck(DoCheckRequest(
        idWorkingItem: item.idWorkingItem,
        idWorkingItemStatus: item.idWorkingItemStatus,
        reason: reason,
        sessionId: Uuid().v4(),
      ));

      print(result);
      await _fetchJobs();
    } catch (error) {
      print(error);
    }
  }

  Future<dynamic> loadWorkingItemImages(String idWorkingItem) async {
    try {
      final result = await _apiService.loadWorkingItemImages(idWorkingItem);
    } catch (error) {
      print(error);
    }
  }
}
