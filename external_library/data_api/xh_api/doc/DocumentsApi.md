# xh_api.api.DocumentsApi

## Load the API package
```dart
import 'package:xh_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiDocumentsDetailGet**](DocumentsApi.md#apidocumentsdetailget) | **GET** /api/Documents/detail | 
[**apiDocumentsDetailPost**](DocumentsApi.md#apidocumentsdetailpost) | **POST** /api/Documents/detail | 
[**apiDocumentsGet**](DocumentsApi.md#apidocumentsget) | **GET** /api/Documents | 
[**apiDocumentsPost**](DocumentsApi.md#apidocumentspost) | **POST** /api/Documents | 


# **apiDocumentsDetailGet**
> apiDocumentsDetailGet()



### Example
```dart
import 'package:xh_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api = XhApi().getDocumentsApi();

try {
    api.apiDocumentsDetailGet();
} catch on DioError (e) {
    print('Exception when calling DocumentsApi->apiDocumentsDetailGet: $e\n');
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
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiDocumentsDetailPost**
> apiDocumentsDetailPost(requestBody)



### Example
```dart
import 'package:xh_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api = XhApi().getDocumentsApi();
final BuiltMap<String, JsonObject> requestBody = ; // BuiltMap<String, JsonObject> | 

try {
    api.apiDocumentsDetailPost(requestBody);
} catch on DioError (e) {
    print('Exception when calling DocumentsApi->apiDocumentsDetailPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **requestBody** | [**BuiltMap&lt;String, JsonObject&gt;**](JsonObject.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/_*+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiDocumentsGet**
> apiDocumentsGet()



### Example
```dart
import 'package:xh_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api = XhApi().getDocumentsApi();

try {
    api.apiDocumentsGet();
} catch on DioError (e) {
    print('Exception when calling DocumentsApi->apiDocumentsGet: $e\n');
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
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiDocumentsPost**
> apiDocumentsPost(requestBody)



### Example
```dart
import 'package:xh_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api = XhApi().getDocumentsApi();
final BuiltMap<String, JsonObject> requestBody = ; // BuiltMap<String, JsonObject> | 

try {
    api.apiDocumentsPost(requestBody);
} catch on DioError (e) {
    print('Exception when calling DocumentsApi->apiDocumentsPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **requestBody** | [**BuiltMap&lt;String, JsonObject&gt;**](JsonObject.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/_*+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

