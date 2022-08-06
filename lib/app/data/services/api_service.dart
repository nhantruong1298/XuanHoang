import 'package:dio/dio.dart';
import 'package:example_nav2/app/data/models/token.dart';
import 'package:get/get.dart' hide Response;
import 'package:xh_api/xh_api.dart';

class ApiService extends GetxService {
  static ApiService get to => Get.find();
  final String _baseUrl = 'http://xuanhoang.xoontec.vn/';
  ApiService() {
    _xhApi = XhApi(dio: Dio(BaseOptions(baseUrl: _baseUrl)));
  }
  late XhApi _xhApi;

  void setToken(Token token) {
    _xhApi = XhApi(
        dio: Dio(BaseOptions(
            baseUrl: _baseUrl,
            headers: {"authorization": "Bearer ${token.accessToken}"})));
  }

  Future<Response<Object>> login(String userName, String password) async {
    final result =
        await _xhApi.getAuthApi().apiAuthLoginPost(loginInfo: LoginInfo(
      (builder) {
        builder.username = userName;
        builder.password = password;
      },
    ));
    return result;
  }

  Future<Object?> getProjects() async {
    final result = await _xhApi.getProjectsApi().apiProjectsGet();
    return result;
  }

  Future<Object?> getPhaseByProjectId(String projectId) async {
    final result =
        await _xhApi.getPhasesApi().apiPhasesGet(projectId: projectId);
    return result;
  }

  Future<Object?> getWorkingTermsByPhaseId(String phaseId) async {
    final result =
        await _xhApi.getWorkingTermsApi().apiWorkingTermsGet(phaseId: phaseId);
    return result;
  }

  Future<Object?> getWorkingItemsByTermId(String termId) async {
    final result =
        await _xhApi.getWorkingItemsApi().apiWorkingItemsGet(termId: termId);
    return result;
  }

  Future<Object?> editWorkingItem(WorkingItemModel? model) async {
    final result = await _xhApi
        .getWorkingItemsApi()
        .apiWorkingItemsPost(workingItemModel: model);
    return result;
  }

  Future<Response<Object>> doCheck(DoCheckModel? model) async {
    final result = await _xhApi
        .getWorkingItemsApi()
        .apiWorkingItemsDocheckPost(doCheckModel: model);
    return result;
  }
}
