import 'package:example_nav2/app/data/models/enum/account_type.dart';
import 'package:example_nav2/app/data/models/response/project_statistic_report_response.dart';
import 'package:example_nav2/app/data/services/api_service.dart';
import 'package:example_nav2/app/data/services/auth_service.dart';
import 'package:example_nav2/app/modules/term/views/term_view.dart';
import 'package:get/get.dart';

class CheckPhaseController extends GetxController {
  final ApiService _apiService;
  late String? idPhase;
  String? idProject;
  Rx<PhaseStatistic> phaseStatistic = PhaseStatistic().obs;
  CheckPhaseController(this._apiService);

  @override
  void onInit() {
    super.onInit();
    idPhase = Get.arguments as String?;
    idProject = AuthService.to.profile?.idProject ?? '';
    _fetchStatisticReport();
  }

  void onDetailButtonPressed() {
    Get.toNamed(TermView.routeName, arguments: idPhase);
  }

  Future<void> _fetchStatisticReport() async {
    if (AuthService.to.accountType != AccountType.staff &&
        AuthService.to.accountType != AccountType.admin) {
      final response = await _apiService.loadProjectStatisticReport(
          idProject ?? '', idPhase ?? '');

      if (response.isNotEmpty == true) {
        final projectStatistic =
            response.firstWhereOrNull((item) => item.idProject == idProject);

        if (projectStatistic != null) {
          final _phaseStatistic = projectStatistic.phaseStatistic
              ?.firstWhereOrNull((phase) => phase.idPhase == idPhase);

          if (_phaseStatistic != null) {
            phaseStatistic.value = _phaseStatistic;
          }
        }
      }
    }
  }
}
