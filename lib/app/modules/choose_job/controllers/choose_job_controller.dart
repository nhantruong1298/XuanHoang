import 'package:example_nav2/app/data/models/request/do_check_request.dart';
import 'package:example_nav2/app/data/models/request/edit_working_item_request.dart';
import 'package:example_nav2/app/data/models/working_item.dart';
import 'package:example_nav2/app/data/services/api_service.dart';
import 'package:example_nav2/widgets/common/dialogs/confirm_dialog.dart';
import 'package:get/get.dart' hide Progress;
import 'package:uuid/uuid.dart';

class ChooseJobController extends GetxController {
  final ApiService _apiService;
  final listJob = <WorkingItem>[].obs;
  List<WorkingItem> _listJobResult = [];
  String _searchText = '';
  ChooseJobController(this._apiService);
  RxBool isLoading = false.obs;
  late String? termId;

  @override
  void onInit() {
    super.onInit();
    termId = Get.arguments as String?;
    _fetchJobs();
  }

  Future<void> _fetchJobs() async {
    if (termId != null) {
      _listJobResult = await _apiService.getWorkingItemsByTermId(termId!);
      onSearchChanged(_searchText);
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
      await _apiService.doCheck(DoCheckRequest(
        idWorkingItem: item.idWorkingItem,
        idWorkingItemStatus: item.idWorkingItemStatus,
        reason: reason,
        sessionId: Uuid().v4(),
      ));

      await _fetchJobs();
    } catch (error) {
      print(error);
    }
  }

  Future<dynamic> loadWorkingItemImages(String idWorkingItem) async {
    try {
      final result =
          await _apiService.loadWorkingItemImagesHistory(idWorkingItem);
      print(result);
    } catch (error) {
      print(error);
    }
  }

  Future<void> onRefreshData() async {
    await _fetchJobs();
  }

  void onSearchChanged(String value) {
    _searchText = value;
    if (_searchText.isEmpty) {
      listJob.value = _listJobResult;
    } else {
      listJob.value = _listJobResult
          .where((element) =>
              element.itemName
                  ?.toLowerCase()
                  .contains(_searchText.toLowerCase()) ==
              true)
          .toList();
    }
  }

  void sendReport(String customerName) async {
    isLoading.value = true;
    try {
      await _apiService.workingTermReport(termId ?? '', customerName);
      showConfirmDialog(
          title: 'Gửi báo cáo thành công',
          textConfirm: 'Xác nhận',
          onConfirm: () {
            Get.back();
            Get.back(result: true);
          });
    } catch (error) {
      showConfirmDialog(
          title: error.toString(),
          textConfirm: 'Xác nhận',
          onConfirm: () {
            Get.back();
          });
    }
    isLoading.value = false;
  }
}
