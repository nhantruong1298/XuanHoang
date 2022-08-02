# xh_api.api.WorkingTermsApi

## Load the API package
```dart
import 'package:xh_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiWorkingTermsDetailsGet**](WorkingTermsApi.md#apiworkingtermsdetailsget) | **GET** /api/working-terms/details | 
[**apiWorkingTermsGet**](WorkingTermsApi.md#apiworkingtermsget) | **GET** /api/working-terms | 
[**apiWorkingTermsPost**](WorkingTermsApi.md#apiworkingtermspost) | **POST** /api/working-terms | 


# **apiWorkingTermsDetailsGet**
> apiWorkingTermsDetailsGet()



### Example
```dart
import 'package:xh_api/api.dart';

final api = XhApi().getWorkingTermsApi();

try {
    api.apiWorkingTermsDetailsGet();
} catch on DioError (e) {
    print('Exception when calling WorkingTermsApi->apiWorkingTermsDetailsGet: $e\n');
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

# **apiWorkingTermsGet**
> apiWorkingTermsGet()



### Example
```dart
import 'package:xh_api/api.dart';

final api = XhApi().getWorkingTermsApi();

try {
    api.apiWorkingTermsGet();
} catch on DioError (e) {
    print('Exception when calling WorkingTermsApi->apiWorkingTermsGet: $e\n');
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

# **apiWorkingTermsPost**
> apiWorkingTermsPost(requestBody)



### Example
```dart
import 'package:xh_api/api.dart';

final api = XhApi().getWorkingTermsApi();
final BuiltMap<String, JsonObject> requestBody = ; // BuiltMap<String, JsonObject> | 

try {
    api.apiWorkingTermsPost(requestBody);
} catch on DioError (e) {
    print('Exception when calling WorkingTermsApi->apiWorkingTermsPost: $e\n');
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

