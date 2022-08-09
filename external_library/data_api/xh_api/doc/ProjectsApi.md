# xh_api.api.ProjectsApi

## Load the API package
```dart
import 'package:xh_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiProjectsAllGet**](ProjectsApi.md#apiprojectsallget) | **GET** /api/Projects/all | 
[**apiProjectsCheckprojectnameGet**](ProjectsApi.md#apiprojectscheckprojectnameget) | **GET** /api/Projects/checkprojectname | 
[**apiProjectsDetailsGet**](ProjectsApi.md#apiprojectsdetailsget) | **GET** /api/Projects/details | 
[**apiProjectsGet**](ProjectsApi.md#apiprojectsget) | **GET** /api/Projects | 
[**apiProjectsPost**](ProjectsApi.md#apiprojectspost) | **POST** /api/Projects | 


# **apiProjectsAllGet**
> apiProjectsAllGet()



### Example
```dart
import 'package:xh_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api = XhApi().getProjectsApi();

try {
    api.apiProjectsAllGet();
} catch on DioError (e) {
    print('Exception when calling ProjectsApi->apiProjectsAllGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiProjectsCheckprojectnameGet**
> apiProjectsCheckprojectnameGet()



### Example
```dart
import 'package:xh_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api = XhApi().getProjectsApi();

try {
    api.apiProjectsCheckprojectnameGet();
} catch on DioError (e) {
    print('Exception when calling ProjectsApi->apiProjectsCheckprojectnameGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiProjectsDetailsGet**
> ProjectModel apiProjectsDetailsGet(idProject)



### Example
```dart
import 'package:xh_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api = XhApi().getProjectsApi();
final String idProject = idProject_example; // String | 

try {
    final response = api.apiProjectsDetailsGet(idProject);
    print(response);
} catch on DioError (e) {
    print('Exception when calling ProjectsApi->apiProjectsDetailsGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **idProject** | **String**|  | [optional] 

### Return type

[**ProjectModel**](ProjectModel.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiProjectsGet**
> BuiltList<ProjectModel> apiProjectsGet()



### Example
```dart
import 'package:xh_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api = XhApi().getProjectsApi();

try {
    final response = api.apiProjectsGet();
    print(response);
} catch on DioError (e) {
    print('Exception when calling ProjectsApi->apiProjectsGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;ProjectModel&gt;**](ProjectModel.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiProjectsPost**
> ResultCRUDModel apiProjectsPost(projectModel)



### Example
```dart
import 'package:xh_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api = XhApi().getProjectsApi();
final ProjectModel projectModel = ; // ProjectModel | 

try {
    final response = api.apiProjectsPost(projectModel);
    print(response);
} catch on DioError (e) {
    print('Exception when calling ProjectsApi->apiProjectsPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **projectModel** | [**ProjectModel**](ProjectModel.md)|  | [optional] 

### Return type

[**ResultCRUDModel**](ResultCRUDModel.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/_*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

