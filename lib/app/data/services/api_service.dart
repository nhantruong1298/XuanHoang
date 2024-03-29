import 'package:dio/dio.dart';
import 'package:example_nav2/app/data/models/progress.dart';
import 'package:example_nav2/app/data/models/project.dart';
import 'package:example_nav2/app/data/models/request/change_password_request.dart';
import 'package:example_nav2/app/data/models/request/delete_do_check_image_request.dart';
import 'package:example_nav2/app/data/models/request/do_check_request.dart';
import 'package:example_nav2/app/data/models/request/edit_working_item_request.dart';
import 'package:example_nav2/app/data/models/request/login_request.dart';
import 'package:example_nav2/app/data/models/response/do_check_image_response.dart';
import 'package:example_nav2/app/data/models/response/do_check_response.dart';
import 'package:example_nav2/app/data/models/response/document_project_response.dart';
import 'package:example_nav2/app/data/models/response/edit_working_item_response.dart';
import 'package:example_nav2/app/data/models/response/image_history_response.dart';
import 'package:example_nav2/app/data/models/response/login_response.dart';
import 'package:example_nav2/app/data/models/response/project_statistic_report_response.dart';
import 'package:example_nav2/app/data/models/response/report_detail_response.dart';
import 'package:example_nav2/app/data/models/response/report_list_item_reponse.dart';
import 'package:example_nav2/app/data/models/response/send_report_response.dart';
import 'package:example_nav2/app/data/models/response/update_report_response.dart';
import 'package:example_nav2/app/data/models/response/warning_project_response.dart';
import 'package:example_nav2/app/data/models/response/working_item_image_response.dart';
import 'package:example_nav2/app/data/models/token.dart';
import 'package:example_nav2/app/data/models/working_item.dart';
import 'package:example_nav2/app/data/models/working_term.dart';
import 'package:example_nav2/app/data/services/xh_api_service.dart';
import 'package:get/get.dart' hide Response, Progress, FormData;
import 'package:dio/dio.dart' as dio;

class ApiService extends GetxService {
  static ApiService get to => Get.find();
  late XHApiService _xhApiService;
  late Dio _dio;
  late Token? _token;
  // static const baseUrl = 'http://checklist.xuanhoangco.com/';
  // static const baseTestUrl = 'https://xuanhoang.xoontec.vn/';

  static const baseUrl =
      const String.fromEnvironment("APP_XH_END_POINT", defaultValue: "");
  ApiService() {
    _init();
    print(baseUrl);
  }

  _init() {
    _xhApiService = XHApiService(createDio());
  }

  static Dio createDio({
    Map<String, dynamic>? headers,
  }) {
    return Dio(BaseOptions(
        baseUrl: baseUrl,
        sendTimeout: 10000,
        receiveTimeout: 10000,
        headers: headers));
  }

  void setToken(Token token) {
    _token = token;
    _dio =
        createDio(headers: {"authorization": "Bearer ${_token?.accessToken}"});
    _xhApiService = XHApiService(_dio);
  }

  void clearToken() {
    _token = null;
    _init();
    //_xhApiService = XHApiService(Dio(BaseOptions(baseUrl: baseUrl)));
  }

  String get accessToken => _token?.accessToken ?? '';

  Future<LoginResponse> login(String userName, String password) async {
    try {
      final response = await _xhApiService
          .login(LoginRequest(userName: userName, password: password));

      return response;
    } catch (error) {
      rethrow;
    }
  }

  Future<List<Project>> getProjects() async {
    final result = await _xhApiService.loadProjectList();
    return result;
  }

  Future<List<Progress>> getPhaseByProjectId(String projectId) async {
    try {
      final result = await _xhApiService.loadPhaseByProjectId(projectId);
      return result;
    } catch (error) {
      print(error);
      return [];
    }
  }

  Future<List<WorkingTerm>> getWorkingTermsByPhaseId(String phaseId) async {
    try {
      final result = await _xhApiService.loadWorkingTermByPhaseId(phaseId);

      return result;
    } catch (error) {
      print(error);
      return [];
    }
  }

  Future<List<WorkingItem>> getWorkingItemsByTermId(String termId) async {
    try {
      final result = await _xhApiService.loadWorkingItemsByTermId(termId);
      return result;
    } catch (error) {
      print(error);
      return [];
    }
  }

  Future<EditWorkingItemResponse> editWorkingItem(
      EditWorkingItemRequest request) async {
    try {
      final result = await _xhApiService.editWorkingItem(request);
      return result;
    } catch (error) {
      rethrow;
    }
  }

  Future<DoCheckResponse> doCheck(DoCheckRequest request) async {
    final result = await _xhApiService.doCheckPost(request);

    return result;
  }

  Future<List<WorkingItemImageResponse>> loadWorkingItemImages(
      String idWorkingItem) async {
    try {
      final result = await _xhApiService.loadWorkingItemImages(idWorkingItem);

      return result;
    } catch (error) {
      print(error);
      return [];
    }
  }

  Future<DoCheckImageResponse> uploadDocheckImage(
      String idWorkingItem, dio.FormData formData) async {
    try {
      final result = await _xhApiService.uploadDocheckImage(
        idWorkingItem: idWorkingItem,
        formData: formData,
      );

      return result;
    } catch (error) {
      print(error);
      return DoCheckImageResponse(message: error.toString());
    }
  }

  Future<List<Project>> loadProjectIncident() async {
    try {
      final response = await _xhApiService.loadProjectIncident();
      return response;
    } catch (error) {
      print(error);
      return [];
    }
  }

  Future<List<ReportDetailResponse>?> loadReportDetail(
      String idIncident) async {
    try {
      final response = await _xhApiService.loadReportDetail(idIncident);
      return response;
    } catch (error) {
      print(error);
      return [];
    }
  }

  Future<dynamic> loadFile(String name) async {
    try {
      final response = await _xhApiService.loadFile(name);
      return response;
    } catch (error) {
      print(error);
    }
  }

  Future<dynamic> loadFiles(String name) async {
    try {
      final response =
          await _xhApiService.loadFiles(name, _token?.accessToken ?? '');
      return response;
    } catch (error) {
      print(error);
    }
  }

  Future<List<ImageHistoryResponse>?> loadWorkingItemImagesHistory(
      String idWorkingItem) async {
    try {
      final result =
          await _xhApiService.loadWorkingItemImagesHistory(idWorkingItem);

      return result ?? [];
    } catch (error) {
      print(error);
      return [];
    }
  }

  Future<UpdateReportResponse?> updateReportDetail(FormData formData) async {
    try {
      final response =
          await _xhApiService.updateReportDetail(formData: formData);
      return response;
    } catch (error) {
      print(error);
      return null;
    }
  }

  Future<List<ReportListItemResponse>> loadReportList(String idProject) async {
    try {
      final response = await _xhApiService.loadReportList(idProject);
      return response ?? [];
    } catch (error) {
      print(error);
      return [];
    }
  }

  Future<UpdateReportResponse?> closeReport(String idIncident) async {
    try {
      final response = await _xhApiService.closeReport(idIncident);
      return response;
    } catch (error) {
      print(error);
      return null;
    }
  }

  String getImageFullUrl(String imagePath) {
    final String query =
        '${Uri.encodeComponent(imagePath)}&token=${_token?.accessToken}';
    return '${baseUrl}api/FileManager/files?name=$query';
  }

  Future<void> changePassword(String newPassword, String retypePassword) async {
    await _xhApiService.changePassword(ChangePasswordRequest(
        newPassword: newPassword, retypePassword: retypePassword));
  }

  Future<List<WarningProjectResponse>> loadWarningByIdProject(
      String idProject) async {
    try {
      final response = await _xhApiService.loadWarningByIdProject(idProject);
      return response;
    } catch (error) {
      print(error);
      return [];
    }
  }

  Future<List<DocumentProjectResponse>> loadDocumentByIdProject(
      String idProject) async {
    try {
      final response = await _xhApiService.loadDocumentByIdProject(idProject);
      return response;
    } catch (error) {
      print(error);
      return [];
    }
  }

  Future<UpdateReportResponse?> createProjectIncident(
      {required FormData formData}) async {
    try {
      final response =
          await _xhApiService.createProjectIncident(formData: formData);
      return response;
    } catch (error) {
      print(error);
      return null;
    }
  }

  Future<String?> workingTermReport(
      String idWorkingTerm, String customerName, FormData formData) async {
    try {
      final response = await _xhApiService.workingTermReport(
          idWorkingTerm, customerName, formData);

      final map = response as Map<String, dynamic>;

      return map['url'];
    } catch (error) {
      rethrow;
    }
  }

  Future<List<ProjectStatistic>> loadProjectStatisticReport(
    String idProject,
    String idPhase,
  ) async {
    try {
      final response =
          await _xhApiService.loadProjectStatisticReport(idProject, idPhase);
      return response;
    } catch (error) {
      print(error);
      return [];
    }
  }

  Future<DoCheckImageResponse> deleteDoCheckImage({
    required String? idWorkingItem,
    required String? picture,
    required String? description,
    required String? idWorkingItemHistoryPicture,
    required String? isDeleted,
    required String? fullName,
    required String? idWorkingItemStatus,
    required String? isReported,
    required String? reason,
    required String? statusName,
  }) async {
    try {
      final response = await _xhApiService.deleteDoCheckImage(
          DeleteDoCheckImageRequest(
              description: description,
              idWorkingItem: idWorkingItem,
              idWorkingItemHistoryPicture: idWorkingItemHistoryPicture,
              isDeleted: isDeleted,
              picture: picture,
              fullName: fullName,
              idWorkingItemStatus: idWorkingItemStatus,
              isReported: isReported,
              reason: reason,
              statusName: statusName));
      return response;
    } catch (error) {
      print(error);
      rethrow;
    }
  }

  Future<SendReportResponse> loadFinalReport(
      {required String idWorkingTerm}) async {
    try {
      final response = await _xhApiService.loadFinalReport(idWorkingTerm);
      return response;
    } catch (error) {
      rethrow;
    }
  }

  Future<SendReportResponse> sendFinalReport(
      {required String idWorkingTerm}) async {
    try {
      final response = await _xhApiService.sendFinalReport(idWorkingTerm);

      return response;
    } catch (error) {
      rethrow;
    }
  }

  Future<SendReportResponse> createWorkingReport(
      {required String idWorkingTerm}) async {
    try {
      final response = await _xhApiService.createWorkingReport(idWorkingTerm);

      return response;
    } catch (error) {
      rethrow;
    }
  }
}
