# xh_api.api.PhasesApi

## Load the API package
```dart
import 'package:xh_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiPhasesDetailsGet**](PhasesApi.md#apiphasesdetailsget) | **GET** /api/Phases/details | 
[**apiPhasesGet**](PhasesApi.md#apiphasesget) | **GET** /api/Phases | 
[**apiPhasesPost**](PhasesApi.md#apiphasespost) | **POST** /api/Phases | 


# **apiPhasesDetailsGet**
> apiPhasesDetailsGet()



### Example
```dart
import 'package:xh_api/api.dart';

final api = XhApi().getPhasesApi();

try {
    api.apiPhasesDetailsGet();
} catch on DioError (e) {
    print('Exception when calling PhasesApi->apiPhasesDetailsGet: $e\n');
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

# **apiPhasesGet**
> apiPhasesGet()



### Example
```dart
import 'package:xh_api/api.dart';

final api = XhApi().getPhasesApi();

try {
    api.apiPhasesGet();
} catch on DioError (e) {
    print('Exception when calling PhasesApi->apiPhasesGet: $e\n');
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

# **apiPhasesPost**
> apiPhasesPost(requestBody)



### Example
```dart
import 'package:xh_api/api.dart';

final api = XhApi().getPhasesApi();
final BuiltMap<String, JsonObject> requestBody = ; // BuiltMap<String, JsonObject> | 

try {
    api.apiPhasesPost(requestBody);
} catch on DioError (e) {
    print('Exception when calling PhasesApi->apiPhasesPost: $e\n');
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

