import 'package:dio/dio.dart';
import 'package:example_nav2/app/data/models/progress.dart';
import 'package:example_nav2/app/data/models/project.dart';
import 'package:example_nav2/app/data/models/request/do_check_request.dart';
import 'package:example_nav2/app/data/models/request/edit_working_item_request.dart';
import 'package:example_nav2/app/data/models/response/do_check_response.dart';
import 'package:example_nav2/app/data/models/response/edit_working_item_response.dart';
import 'package:example_nav2/app/data/models/token.dart';
import 'package:example_nav2/app/data/models/working_item.dart';
import 'package:example_nav2/app/data/models/working_term.dart';
import 'package:example_nav2/app/data/services/xh_api_service.dart';
import 'package:get/get.dart' hide Response, Progress;
import 'package:xh_api/xh_api.dart';

class ApiService extends GetxService {
  static ApiService get to => Get.find();
  late XHApiService _xhApiService;
  final String _baseUrl = 'http://xuanhoang.xoontec.vn/';
  ApiService() {
    _xhApi = XhApi(dio: Dio(BaseOptions(baseUrl: _baseUrl)));
  }
  late XhApi _xhApi;

  void setToken(Token token) {
    final dio = Dio(BaseOptions(
        baseUrl: _baseUrl,
        headers: {"authorization": "Bearer ${token.accessToken}"}));
    _xhApi = XhApi(dio: dio);
    _xhApiService = XHApiService(dio);
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

  Future<List<Project>> getProjects() async {
    final result = await _xhApiService.loadProjectList();
    return result;
  }

  Future<List<Progress>> getPhaseByProjectId(String projectId) async {
    try {
      final result = await _xhApiService.loadPhaseByProjectId(projectId);
      return result;
    } catch (error) {
      return [];
    }
  }

  Future<List<WorkingTerm>> getWorkingTermsByPhaseId(String phaseId) async {
    try {
      final result = await _xhApiService.loadWorkingTermByPhaseId(phaseId);

      return result;
    } catch (error) {
      return [];
    }
  }

  Future<List<WorkingItem>> getWorkingItemsByTermId(String termId) async {
    try {
      final result = await _xhApiService.loadWorkingItemsByTermId(termId);
      return result;
    } catch (error) {
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

  Future<dynamic> loadWorkingItemImages(String idWorkingItem) async {
    final result = await _xhApiService.loadWorkingItemImages(idWorkingItem,'');

    return result;
  }
}
