//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:dio/dio.dart';
import 'package:built_value/serializer.dart';
import 'package:xh_api/src/serializers.dart';
import 'package:xh_api/src/auth/api_key_auth.dart';
import 'package:xh_api/src/auth/basic_auth.dart';
import 'package:xh_api/src/auth/bearer_auth.dart';
import 'package:xh_api/src/auth/oauth.dart';
import 'package:xh_api/src/api/auth_api.dart';
import 'package:xh_api/src/api/common_api.dart';
import 'package:xh_api/src/api/dynamic_form_api.dart';
import 'package:xh_api/src/api/file_manager_api.dart';
import 'package:xh_api/src/api/phases_api.dart';
import 'package:xh_api/src/api/projects_api.dart';
import 'package:xh_api/src/api/users_api.dart';
import 'package:xh_api/src/api/working_items_api.dart';
import 'package:xh_api/src/api/working_terms_api.dart';

class XhApi {
  static const String basePath = r'http://localhost';

  final Dio dio;
  final Serializers serializers;

  XhApi({
    Dio? dio,
    Serializers? serializers,
    String? basePathOverride,
    List<Interceptor>? interceptors,
  })  : this.serializers = serializers ?? standardSerializers,
        this.dio = dio ??
            Dio(BaseOptions(
              baseUrl: basePathOverride ?? basePath,
              connectTimeout: 5000,
              receiveTimeout: 3000,
            )) {
    if (interceptors == null) {
      this.dio.interceptors.addAll([
        OAuthInterceptor(),
        BasicAuthInterceptor(),
        BearerAuthInterceptor(),
        ApiKeyAuthInterceptor(),
      ]);
    } else {
      this.dio.interceptors.addAll(interceptors);
    }
  }

  void setOAuthToken(String name, String token) {
    if (this.dio.interceptors.any((i) => i is OAuthInterceptor)) {
      (this.dio.interceptors.firstWhere((i) => i is OAuthInterceptor) as OAuthInterceptor).tokens[name] = token;
    }
  }

  void setBearerAuth(String name, String token) {
    if (this.dio.interceptors.any((i) => i is BearerAuthInterceptor)) {
      (this.dio.interceptors.firstWhere((i) => i is BearerAuthInterceptor) as BearerAuthInterceptor).tokens[name] = token;
    }
  }

  void setBasicAuth(String name, String username, String password) {
    if (this.dio.interceptors.any((i) => i is BasicAuthInterceptor)) {
      (this.dio.interceptors.firstWhere((i) => i is BasicAuthInterceptor) as BasicAuthInterceptor).authInfo[name] = BasicAuthInfo(username, password);
    }
  }

  void setApiKey(String name, String apiKey) {
    if (this.dio.interceptors.any((i) => i is ApiKeyAuthInterceptor)) {
      (this.dio.interceptors.firstWhere((element) => element is ApiKeyAuthInterceptor) as ApiKeyAuthInterceptor).apiKeys[name] = apiKey;
    }
  }

  /// Get AuthApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  AuthApi getAuthApi() {
    return AuthApi(dio, serializers);
  }

  /// Get CommonApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  CommonApi getCommonApi() {
    return CommonApi(dio, serializers);
  }

  /// Get DynamicFormApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  DynamicFormApi getDynamicFormApi() {
    return DynamicFormApi(dio, serializers);
  }

  /// Get FileManagerApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  FileManagerApi getFileManagerApi() {
    return FileManagerApi(dio, serializers);
  }

  /// Get PhasesApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  PhasesApi getPhasesApi() {
    return PhasesApi(dio, serializers);
  }

  /// Get ProjectsApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  ProjectsApi getProjectsApi() {
    return ProjectsApi(dio, serializers);
  }

  /// Get UsersApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  UsersApi getUsersApi() {
    return UsersApi(dio, serializers);
  }

  /// Get WorkingItemsApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  WorkingItemsApi getWorkingItemsApi() {
    return WorkingItemsApi(dio, serializers);
  }

  /// Get WorkingTermsApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  WorkingTermsApi getWorkingTermsApi() {
    return WorkingTermsApi(dio, serializers);
  }
}
