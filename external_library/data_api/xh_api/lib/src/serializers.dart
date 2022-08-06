//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:built_value/iso_8601_date_time_serializer.dart';
import 'package:xh_api/src/date_serializer.dart';
import 'package:xh_api/src/model/date.dart';

import 'package:xh_api/src/model/account_forgot_password.dart';
import 'package:xh_api/src/model/change_pass_model.dart';
import 'package:xh_api/src/model/do_check_image_model.dart';
import 'package:xh_api/src/model/do_check_model.dart';
import 'package:xh_api/src/model/login_info.dart';
import 'package:xh_api/src/model/new_account.dart';
import 'package:xh_api/src/model/o_auth_tokens.dart';
import 'package:xh_api/src/model/phase_model.dart';
import 'package:xh_api/src/model/problem_details.dart';
import 'package:xh_api/src/model/project_model.dart';
import 'package:xh_api/src/model/response_login_model.dart';
import 'package:xh_api/src/model/result_crud_model.dart';
import 'package:xh_api/src/model/sign_up_account.dart';
import 'package:xh_api/src/model/upload_mode.dart';
import 'package:xh_api/src/model/user_from_service.dart';
import 'package:xh_api/src/model/user_info.dart';
import 'package:xh_api/src/model/user_profile_detail.dart';
import 'package:xh_api/src/model/user_role_update.dart';
import 'package:xh_api/src/model/user_role_update_model.dart';
import 'package:xh_api/src/model/working_item_model.dart';
import 'package:xh_api/src/model/working_term_model.dart';

part 'serializers.g.dart';

@SerializersFor([
  AccountForgotPassword,
  ChangePassModel,
  DoCheckImageModel,
  DoCheckModel,
  LoginInfo,
  NewAccount,
  OAuthTokens,
  PhaseModel,
  ProblemDetails,
  ProjectModel,
  ResponseLoginModel,
  ResultCRUDModel,
  SignUpAccount,
  UploadMode,
  UserFromService,
  UserInfo,
  UserProfileDetail,
  UserRoleUpdate,
  UserRoleUpdateModel,
  WorkingItemModel,
  WorkingTermModel,
])
Serializers serializers = (_$serializers.toBuilder()
      ..addBuilderFactory(
        const FullType(BuiltMap, [FullType(String), FullType(JsonObject)]),
        () => MapBuilder<String, JsonObject>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltMap, [FullType(String), FullType(JsonObject)]),
        () => MapBuilder<String, JsonObject>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltMap, [FullType(String), FullType(String)]),
        () => MapBuilder<String, String>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(PhaseModel)]),
        () => ListBuilder<PhaseModel>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(ProjectModel)]),
        () => ListBuilder<ProjectModel>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltMap, [FullType(String), FullType(JsonObject)]),
        () => MapBuilder<String, JsonObject>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(WorkingItemModel)]),
        () => ListBuilder<WorkingItemModel>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(WorkingTermModel)]),
        () => ListBuilder<WorkingTermModel>(),
      )
      ..add(const DateSerializer())
      ..add(Iso8601DateTimeSerializer()))
    .build();

Serializers standardSerializers =
    (serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
