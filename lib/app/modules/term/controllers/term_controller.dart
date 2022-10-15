import 'package:example_nav2/app/data/models/enum/account_type.dart';
import 'package:example_nav2/app/data/models/response/project_statistic_report_response.dart';
import 'package:example_nav2/app/data/models/working_term.dart';
import 'package:example_nav2/app/data/services/api_service.dart';
import 'package:example_nav2/app/data/services/auth_service.dart';
import 'package:get/get.dart' hide Progress;
import 'package:url_launcher/url_launcher_string.dart';

class TermController extends GetxController {
  final ApiService _apiService;

  //Data for staff
  final listWorkingTerm = <WorkingTerm>[].obs;
  List<WorkingTerm> _listWorkingTermResult = [];
  //Data for customer
  final listTermStatistic = <TermStatistic>[].obs;
  List<TermStatistic> _listTermStatisticResult = [];

  String _searchText = '';
  TermController(this._apiService);
  late String? idPhase;
  String? idProject;

  @override
  void onInit() {
    super.onInit();
    idPhase = Get.arguments as String?;
    idProject = AuthService.to.profile?.idProject ?? '';
    _fetchTerms();
  }

  Future<void> _fetchTerms() async {
    if (idPhase != null) {
      if (AuthService.to.accountType == AccountType.staff ||
          AuthService.to.accountType == AccountType.admin) {
        _listWorkingTermResult =
            await _apiService.getWorkingTermsByPhaseId(idPhase ?? '');
      } else {
        final response = await _apiService.loadProjectStatisticReport(
            idProject ?? '', idPhase ?? '');

        if (response.isNotEmpty == true) {
          final projectStatistic =
              response.firstWhereOrNull((item) => item.idProject == idProject);

          if (projectStatistic != null) {
            final phaseStatistic = projectStatistic.phaseStatistic
                ?.firstWhereOrNull((phase) => phase.idPhase == idPhase);

            if (phaseStatistic != null) {
              _listTermStatisticResult = phaseStatistic.termStatistic ?? [];
            }
          }
        }
      }

      onSearchChanged(_searchText);
    }
  }

  Future<void> onRefreshData() async {
    await _fetchTerms();
  }

  void onSearchChanged(String value) {
    _searchText = value;

    switch (AuthService.to.accountType) {
      case AccountType.staff:
      case AccountType.admin:
        {
          if (_searchText.isEmpty) {
            listWorkingTerm.value = _listWorkingTermResult;
          } else {
            listWorkingTerm.value = _listWorkingTermResult
                .where((element) =>
                    element.termName
                        ?.toLowerCase()
                        .contains(_searchText.toLowerCase()) ==
                    true)
                .toList();
          }
        }
        break;
      default:
        {
          if (_searchText.isEmpty) {
            listTermStatistic.value = _listTermStatisticResult;
          } else {
            listTermStatistic.value = _listTermStatisticResult
                .where((element) =>
                    element.termName
                        ?.toLowerCase()
                        .contains(_searchText.toLowerCase()) ==
                    true)
                .toList();
          }
        }
        break;
    }
  }

  void onInfoPressed(String? instructionFile) {
    try {
      final url = _apiService.getImageFullUrl(instructionFile ?? '');

      launchUrlString(url, mode: LaunchMode.externalApplication);
    } catch (error) {
      print(error);
    }
  }
}
