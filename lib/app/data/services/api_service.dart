import 'dart:io';

import 'package:dio/dio.dart';
import 'package:example_nav2/app/data/models/progress.dart';
import 'package:example_nav2/app/data/models/project.dart';
import 'package:example_nav2/app/data/models/request/do_check_request.dart';
import 'package:example_nav2/app/data/models/request/edit_working_item_request.dart';
import 'package:example_nav2/app/data/models/request/incident_discussion_request.dart';
import 'package:example_nav2/app/data/models/request/login_request.dart';
import 'package:example_nav2/app/data/models/response/do_check_response.dart';
import 'package:example_nav2/app/data/models/response/edit_working_item_response.dart';
import 'package:example_nav2/app/data/models/response/image_history_response.dart';
import 'package:example_nav2/app/data/models/response/login_response.dart';
import 'package:example_nav2/app/data/models/response/project_incident_response.dart';
import 'package:example_nav2/app/data/models/response/report_detail_response.dart';
import 'package:example_nav2/app/data/models/response/report_list_item_reponse.dart';
import 'package:example_nav2/app/data/models/response/update_report_response.dart';
import 'package:example_nav2/app/data/models/token.dart';
import 'package:example_nav2/app/data/models/working_item.dart';
import 'package:example_nav2/app/data/models/working_term.dart';
import 'package:example_nav2/app/data/services/xh_api_service.dart';
import 'package:get/get.dart' hide Response, Progress;

class ApiService extends GetxService {
  // static ApiService get to => Get.find();
  late XHApiService _xhApiService;
  late Dio _dio;
  late Token _token;
  final String _baseUrl = 'http://xuanhoang.xoontec.vn/';
  ApiService() {
    // _xhApi = XhApi(dio: Dio(BaseOptions(baseUrl: _baseUrl)));

    _xhApiService = XHApiService(Dio(BaseOptions(baseUrl: _baseUrl)));
  }
  // late XhApi _xhApi;

  void setToken(Token token) {
    _token = token;

    _dio = Dio(BaseOptions(
        baseUrl: _baseUrl,
        headers: {"authorization": "Bearer ${_token.accessToken}"}));
    // _xhApi = XhApi(dio: dio);
    _xhApiService = XHApiService(_dio);
  }

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
    final result = await _xhApiService.loadWorkingItemImages(idWorkingItem, '');

    return result;
  }

  Future<dynamic> uploadDocheckImage(String idWorkingItem, File file) async {
    try {
      final result = await _xhApiService.uploadDocheckImage(
          idWorkingItem: idWorkingItem, file: file);

      return result;
    } catch (error) {
      print(error);
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
      final response = await _xhApiService.loadFiles(name, _token.accessToken ?? '');
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

  Future<UpdateReportResponse?> updateReportDetail(
      IncidentDiscussionRequest request, List<File> files) async {
    try {
      final response = await _xhApiService.updateReportDetail(
          request: request, files: files);
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
}
