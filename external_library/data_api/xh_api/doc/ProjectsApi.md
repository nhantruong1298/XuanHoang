# xh_api.api.ProjectsApi

## Load the API package
```dart
import 'package:xh_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiProjectsCheckprojectnameGet**](ProjectsApi.md#apiprojectscheckprojectnameget) | **GET** /api/Projects/checkprojectname | 
[**apiProjectsDetailsGet**](ProjectsApi.md#apiprojectsdetailsget) | **GET** /api/Projects/details | 
[**apiProjectsGet**](ProjectsApi.md#apiprojectsget) | **GET** /api/Projects | 
[**apiProjectsPost**](ProjectsApi.md#apiprojectspost) | **POST** /api/Projects | 


# **apiProjectsCheckprojectnameGet**
> apiProjectsCheckprojectnameGet()



### Example
```dart
import 'package:xh_api/api.dart';

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

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiProjectsDetailsGet**
> apiProjectsDetailsGet()



### Example
```dart
import 'package:xh_api/api.dart';

final api = XhApi().getProjectsApi();

try {
    api.apiProjectsDetailsGet();
} catch on DioError (e) {
    print('Exception when calling ProjectsApi->apiProjectsDetailsGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiProjectsGet**
> apiProjectsGet()



### Example
```dart
import 'package:xh_api/api.dart';

final api = XhApi().getProjectsApi();

try {
    api.apiProjectsGet();
} catch on DioError (e) {
    print('Exception when calling ProjectsApi->apiProjectsGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiProjectsPost**
> apiProjectsPost(requestBody)



### Example
```dart
import 'package:xh_api/api.dart';

final api = XhApi().getProjectsApi();
final BuiltMap<String, JsonObject> requestBody = ; // BuiltMap<String, JsonObject> | 

try {
    api.apiProjectsPost(requestBody);
} catch on DioError (e) {
    print('Exception when calling ProjectsApi->apiProjectsPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **requestBody** | [**BuiltMap&lt;String, JsonObject&gt;**](JsonObject.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/_*+json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

