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
> WorkingTermModel apiWorkingTermsDetailsGet(idWorkingTerm)



### Example
```dart
import 'package:xh_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api = XhApi().getWorkingTermsApi();
final String idWorkingTerm = idWorkingTerm_example; // String | 

try {
    final response = api.apiWorkingTermsDetailsGet(idWorkingTerm);
    print(response);
} catch on DioError (e) {
    print('Exception when calling WorkingTermsApi->apiWorkingTermsDetailsGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **idWorkingTerm** | **String**|  | [optional] 

### Return type

[**WorkingTermModel**](WorkingTermModel.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiWorkingTermsGet**
> BuiltList<WorkingTermModel> apiWorkingTermsGet()



### Example
```dart
import 'package:xh_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api = XhApi().getWorkingTermsApi();

try {
    final response = api.apiWorkingTermsGet();
    print(response);
} catch on DioError (e) {
    print('Exception when calling WorkingTermsApi->apiWorkingTermsGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;WorkingTermModel&gt;**](WorkingTermModel.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiWorkingTermsPost**
> ResultCRUDModel apiWorkingTermsPost(workingTermModel)



### Example
```dart
import 'package:xh_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api = XhApi().getWorkingTermsApi();
final WorkingTermModel workingTermModel = ; // WorkingTermModel | 

try {
    final response = api.apiWorkingTermsPost(workingTermModel);
    print(response);
} catch on DioError (e) {
    print('Exception when calling WorkingTermsApi->apiWorkingTermsPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workingTermModel** | [**WorkingTermModel**](WorkingTermModel.md)|  | [optional] 

### Return type

[**ResultCRUDModel**](ResultCRUDModel.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/_*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

