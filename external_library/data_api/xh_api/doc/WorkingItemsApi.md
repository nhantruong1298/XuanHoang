# xh_api.api.WorkingItemsApi

## Load the API package
```dart
import 'package:xh_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiWorkingItemsDetailsGet**](WorkingItemsApi.md#apiworkingitemsdetailsget) | **GET** /api/working-items/details | 
[**apiWorkingItemsDocheckImagesPatch**](WorkingItemsApi.md#apiworkingitemsdocheckimagespatch) | **PATCH** /api/working-items/docheck/images | 
[**apiWorkingItemsDocheckImagesPost**](WorkingItemsApi.md#apiworkingitemsdocheckimagespost) | **POST** /api/working-items/docheck/images | 
[**apiWorkingItemsDocheckPost**](WorkingItemsApi.md#apiworkingitemsdocheckpost) | **POST** /api/working-items/docheck | 
[**apiWorkingItemsGet**](WorkingItemsApi.md#apiworkingitemsget) | **GET** /api/working-items | 
[**apiWorkingItemsPost**](WorkingItemsApi.md#apiworkingitemspost) | **POST** /api/working-items | 


# **apiWorkingItemsDetailsGet**
> WorkingItemModel apiWorkingItemsDetailsGet(idWorkingItem)



### Example
```dart
import 'package:xh_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api = XhApi().getWorkingItemsApi();
final String idWorkingItem = idWorkingItem_example; // String | 

try {
    final response = api.apiWorkingItemsDetailsGet(idWorkingItem);
    print(response);
} catch on DioError (e) {
    print('Exception when calling WorkingItemsApi->apiWorkingItemsDetailsGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **idWorkingItem** | **String**|  | [optional] 

### Return type

[**WorkingItemModel**](WorkingItemModel.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiWorkingItemsDocheckImagesPatch**
> ResultCRUDModel apiWorkingItemsDocheckImagesPatch(doCheckImageModel)



### Example
```dart
import 'package:xh_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api = XhApi().getWorkingItemsApi();
final DoCheckImageModel doCheckImageModel = ; // DoCheckImageModel | 

try {
    final response = api.apiWorkingItemsDocheckImagesPatch(doCheckImageModel);
    print(response);
} catch on DioError (e) {
    print('Exception when calling WorkingItemsApi->apiWorkingItemsDocheckImagesPatch: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **doCheckImageModel** | [**DoCheckImageModel**](DoCheckImageModel.md)|  | [optional] 

### Return type

[**ResultCRUDModel**](ResultCRUDModel.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/_*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiWorkingItemsDocheckImagesPost**
> apiWorkingItemsDocheckImagesPost(idWorkingItem, sessionId, file)



### Example
```dart
import 'package:xh_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api = XhApi().getWorkingItemsApi();
final String idWorkingItem = idWorkingItem_example; // String | 
final String sessionId = sessionId_example; // String | 
final MultipartFile file = BINARY_DATA_HERE; // MultipartFile | 

try {
    api.apiWorkingItemsDocheckImagesPost(idWorkingItem, sessionId, file);
} catch on DioError (e) {
    print('Exception when calling WorkingItemsApi->apiWorkingItemsDocheckImagesPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **idWorkingItem** | **String**|  | [optional] 
 **sessionId** | **String**|  | [optional] 
 **file** | **MultipartFile**|  | [optional] 

### Return type

void (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiWorkingItemsDocheckPost**
> ResultCRUDModel apiWorkingItemsDocheckPost(doCheckModel)



### Example
```dart
import 'package:xh_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api = XhApi().getWorkingItemsApi();
final DoCheckModel doCheckModel = ; // DoCheckModel | 

try {
    final response = api.apiWorkingItemsDocheckPost(doCheckModel);
    print(response);
} catch on DioError (e) {
    print('Exception when calling WorkingItemsApi->apiWorkingItemsDocheckPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **doCheckModel** | [**DoCheckModel**](DoCheckModel.md)|  | [optional] 

### Return type

[**ResultCRUDModel**](ResultCRUDModel.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/_*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiWorkingItemsGet**
> BuiltList<WorkingItemModel> apiWorkingItemsGet()



### Example
```dart
import 'package:xh_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api = XhApi().getWorkingItemsApi();

try {
    final response = api.apiWorkingItemsGet();
    print(response);
} catch on DioError (e) {
    print('Exception when calling WorkingItemsApi->apiWorkingItemsGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;WorkingItemModel&gt;**](WorkingItemModel.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiWorkingItemsPost**
> ResultCRUDModel apiWorkingItemsPost(workingItemModel)



### Example
```dart
import 'package:xh_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api = XhApi().getWorkingItemsApi();
final WorkingItemModel workingItemModel = ; // WorkingItemModel | 

try {
    final response = api.apiWorkingItemsPost(workingItemModel);
    print(response);
} catch on DioError (e) {
    print('Exception when calling WorkingItemsApi->apiWorkingItemsPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workingItemModel** | [**WorkingItemModel**](WorkingItemModel.md)|  | [optional] 

### Return type

[**ResultCRUDModel**](ResultCRUDModel.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/_*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

