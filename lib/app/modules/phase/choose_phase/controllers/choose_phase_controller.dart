import 'package:example_nav2/app/data/models/enum/account_type.dart';
import 'package:example_nav2/app/data/models/progress.dart';
import 'package:example_nav2/app/data/services/api_service.dart';
import 'package:example_nav2/app/data/services/auth_service.dart';
import 'package:example_nav2/app/modules/term/views/term_view.dart';
import 'package:example_nav2/app/modules/phase/check_phase/views/check_phase_view.dart';
import 'package:get/get.dart' hide Progress;

class ChoosePhaseController extends GetxController {
  final ApiService _apiService;
  var listProgress = <Progress>[].obs;

  List<Progress> _listProgressResult = [];
  String searchText = '';
  ChoosePhaseController(this._apiService);

  late String? idProject;

  @override
  void onInit() {
    super.onInit();
    idProject = Get.arguments as String?;

    _fetchProgress();
  }

  Future<void> _fetchProgress() async {
    if (idProject != null) {
      _listProgressResult =
          await _apiService.getPhaseByProjectId(idProject ?? '');

      if (searchText.isEmpty) {
        listProgress.value = _listProgressResult;
      } else {
        listProgress.value = _listProgressResult
            .where((element) =>
                element.name
                    ?.toLowerCase()
                    .contains(searchText.toLowerCase()) ==
                true)
            .toList();
      }
    }
  }

  void onProgressItemPressed(Progress item) {
    final accountType = AuthService.to.accountType;
    if (accountType == AccountType.staff || accountType == AccountType.admin) {
      Get.toNamed(TermView.routeName, arguments: item.idPhase);
    } else {
      Get.toNamed(CheckPhaseView.routeName, arguments: item.idPhase);
    }
  }

  Future<void> onRefresh() async {
    await _fetchProgress();
  }

  void onSearchChanged(String value) {
    searchText = value;
    if (searchText.isEmpty) {
      listProgress.value = _listProgressResult;
    } else {
      listProgress.value = _listProgressResult
          .where((element) =>
              element.name?.toLowerCase().contains(searchText.toLowerCase()) ==
              true)
          .toList();
    }
  }
}
