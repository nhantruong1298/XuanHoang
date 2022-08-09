import 'dart:io';

import 'package:example_nav2/app/data/models/progress.dart';
import 'package:example_nav2/app/data/models/project.dart';
import 'package:example_nav2/app/data/models/request/do_check_request.dart';
import 'package:example_nav2/app/data/models/request/edit_working_item_request.dart';
import 'package:example_nav2/app/data/models/response/do_check_response.dart';
import 'package:example_nav2/app/data/models/response/edit_working_item_response.dart';
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
  Future<dynamic> loadWorkingItemImages(
      @Query('idWorkingItem') String idWorkingItem,
      @Query('sessionId') String sessionId);

  @POST("/api/working-items/docheck/images")
  @MultiPart()
  Future<dynamic> uploadDocheckImage({
    @Query('idWorkingItem') required String idWorkingItem,
    @Part(name: 'files') required List<File> files,
  });
}
