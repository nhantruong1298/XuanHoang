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
> apiWorkingItemsDetailsGet()



### Example
```dart
import 'package:xh_api/api.dart';

final api = XhApi().getWorkingItemsApi();

try {
    api.apiWorkingItemsDetailsGet();
} catch on DioError (e) {
    print('Exception when calling WorkingItemsApi->apiWorkingItemsDetailsGet: $e\n');
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

# **apiWorkingItemsDocheckImagesPatch**
> apiWorkingItemsDocheckImagesPatch(requestBody)



### Example
```dart
import 'package:xh_api/api.dart';

final api = XhApi().getWorkingItemsApi();
final BuiltMap<String, JsonObject> requestBody = ; // BuiltMap<String, JsonObject> | 

try {
    api.apiWorkingItemsDocheckImagesPatch(requestBody);
} catch on DioError (e) {
    print('Exception when calling WorkingItemsApi->apiWorkingItemsDocheckImagesPatch: $e\n');
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

# **apiWorkingItemsDocheckImagesPost**
> apiWorkingItemsDocheckImagesPost(idWorkingItem, sessionId)



### Example
```dart
import 'package:xh_api/api.dart';

final api = XhApi().getWorkingItemsApi();
final String idWorkingItem = idWorkingItem_example; // String | 
final String sessionId = sessionId_example; // String | 

try {
    api.apiWorkingItemsDocheckImagesPost(idWorkingItem, sessionId);
} catch on DioError (e) {
    print('Exception when calling WorkingItemsApi->apiWorkingItemsDocheckImagesPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **idWorkingItem** | **String**|  | [optional] 
 **sessionId** | **String**|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiWorkingItemsDocheckPost**
> apiWorkingItemsDocheckPost(requestBody)



### Example
```dart
import 'package:xh_api/api.dart';

final api = XhApi().getWorkingItemsApi();
final BuiltMap<String, JsonObject> requestBody = ; // BuiltMap<String, JsonObject> | 

try {
    api.apiWorkingItemsDocheckPost(requestBody);
} catch on DioError (e) {
    print('Exception when calling WorkingItemsApi->apiWorkingItemsDocheckPost: $e\n');
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

# **apiWorkingItemsGet**
> apiWorkingItemsGet()



### Example
```dart
import 'package:xh_api/api.dart';

final api = XhApi().getWorkingItemsApi();

try {
    api.apiWorkingItemsGet();
} catch on DioError (e) {
    print('Exception when calling WorkingItemsApi->apiWorkingItemsGet: $e\n');
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

# **apiWorkingItemsPost**
> apiWorkingItemsPost(requestBody)



### Example
```dart
import 'package:xh_api/api.dart';

final api = XhApi().getWorkingItemsApi();
final BuiltMap<String, JsonObject> requestBody = ; // BuiltMap<String, JsonObject> | 

try {
    api.apiWorkingItemsPost(requestBody);
} catch on DioError (e) {
    print('Exception when calling WorkingItemsApi->apiWorkingItemsPost: $e\n');
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

