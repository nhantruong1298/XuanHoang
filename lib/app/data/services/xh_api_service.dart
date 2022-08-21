import 'dart:io';

import 'package:example_nav2/app/data/models/progress.dart';
import 'package:example_nav2/app/data/models/project.dart';
import 'package:example_nav2/app/data/models/request/change_password_request.dart';
import 'package:example_nav2/app/data/models/request/create_project_incident_request.dart';
import 'package:example_nav2/app/data/models/request/do_check_request.dart';
import 'package:example_nav2/app/data/models/request/edit_working_item_request.dart';
import 'package:example_nav2/app/data/models/request/incident_discussion_request.dart';
import 'package:example_nav2/app/data/models/request/login_request.dart';
import 'package:example_nav2/app/data/models/response/do_check_image_response.dart';
import 'package:example_nav2/app/data/models/response/do_check_response.dart';
import 'package:example_nav2/app/data/models/response/document_project_response.dart';
import 'package:example_nav2/app/data/models/response/edit_working_item_response.dart';
import 'package:example_nav2/app/data/models/response/image_history_response.dart';
import 'package:example_nav2/app/data/models/response/login_response.dart';
import 'package:example_nav2/app/data/models/response/project_incident_response.dart';
import 'package:example_nav2/app/data/models/response/project_statistic_report_response.dart';
import 'package:example_nav2/app/data/models/response/report_detail_response.dart';
import 'package:example_nav2/app/data/models/response/report_list_item_reponse.dart';
import 'package:example_nav2/app/data/models/response/update_report_response.dart';
import 'package:example_nav2/app/data/models/response/warning_project_response.dart';
import 'package:example_nav2/app/data/models/working_item.dart';
import 'package:example_nav2/app/data/models/working_term.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

part 'xh_api_service.g.dart';

@RestApi()
abstract class XHApiService {
  factory XHApiService(Dio dio) = _XHApiService;

  @GET("/api/Projects")
  Future<List<Project>> loadProjectList();

  @GET("/api/Phases")
  Future<List<Progress>> loadPhaseByProjectId(
      @Query('IdProject') String projectId);

  @GET("/api/working-terms")
  Future<List<WorkingTerm>> loadWorkingTermByPhaseId(
      @Query('IdPhase') String phaseId);

  @GET("/api/working-items")
  Future<List<WorkingItem>> loadWorkingItemsByTermId(
      @Query('IdWorkingTerm') String termId);

  @POST("/api/working-items")
  Future<EditWorkingItemResponse> editWorkingItem(
      @Body() EditWorkingItemRequest request);

  @POST("/api/working-items/docheck")
  Future<DoCheckResponse> doCheckPost(@Body() DoCheckRequest request);

  @GET("/api/working-items/images")
  Future<List<ImageHistoryResponse>> loadWorkingItemImages(
      @Query('idWorkingItem') String idWorkingItem);

  @POST("/api/working-items/docheck/images")
  @MultiPart()
  Future<DoCheckImageResponse> uploadDocheckImage({
    @Query('idWorkingItem') required String idWorkingItem,
    @Part(name: 'File') required File file,
  });

  @POST("/api/Auth/Login")
  Future<LoginResponse> login(@Body() LoginRequest request);

  @GET("/api/Projects/incident")
  Future<List<Project>> loadProjectIncident();

  @GET("/api/Projects/incident-discussion")
  Future<List<ReportDetailResponse>?> loadReportDetail(
    @Query('IdIncident') String idIncident,
  );

  @GET("/api/FileManager/file")
  Future<dynamic> loadFile(@Query('name') String name);

  @GET("/api/FileManager/files")
  Future<dynamic> loadFiles(
      @Query('name') String name, @Query('token') String token);

  @POST("/api/Projects/incident-discussion")
  @MultiPart()
  Future<UpdateReportResponse> updateReportDetail({
    @Part(name: 'IdIncident') required int idIncident,
    @Part(name: 'ReplyContent') required String replyContent,
    @Part(name: 'IdIncidentStatus') required String idIncidentStatus,
    @Part(name: 'Files') required List<File> files,
  });

  @GET("/api/working-items/images/history")
  Future<List<ImageHistoryResponse>?> loadWorkingItemImagesHistory(
    @Query('idWorkingItem') String idWorkingItem,
  );

  @GET("/api/Projects/incident-warning")
  Future<List<ReportListItemResponse>?> loadReportList(
    @Query('idProject') String idProject,
  );

  @POST("/api/projects/incident/close")
  Future<UpdateReportResponse> closeReport(
    @Query('IdIncident') String idIncident,
  );

  @POST("/api/Auth/password/change")
  Future<void> changePassword(
    @Body() ChangePasswordRequest request,
  );

  @GET("/api/Projects/warning-project")
  Future<List<WarningProjectResponse>> loadWarningByIdProject(
    @Query('idProject') String idProject,
  );

  @GET("/api/Documents/project")
  Future<List<DocumentProjectResponse>> loadDocumentByIdProject(
    @Query('idProject') String idProject,
  );

  @POST("/api/Projects/incident")
  @MultiPart()
  Future<UpdateReportResponse> createProjectIncident({
    @Part(name: 'IdProject') required int idProject,
    @Part(name: 'IncidentName') required String incidentName,
    @Part(name: 'IncidentDescription') required String incidentDescription,
    @Part(name: 'Files') required List<File> files,
  });

  @POST("/api/working-terms/report")
  Future<void> workingTermReport(
    @Query('idWorkingTerm') String idWorkingTerm,
    @Query('customerName') String customerName,
  );

  @GET("/api/Projects/statistic-report")
  Future<List<ProjectStatistic>> loadProjectStatisticReport(
    @Query('idProject') String idProject,
    @Query('idPhase') String idPhase,
  );
}
