# xh_api.api.FileManagerApi

## Load the API package
```dart
import 'package:xh_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiFileManagerCheckFileExistedGet**](FileManagerApi.md#apifilemanagercheckfileexistedget) | **GET** /api/FileManager/CheckFileExisted | 
[**apiFileManagerGetFileGet**](FileManagerApi.md#apifilemanagergetfileget) | **GET** /api/FileManager/GetFile | 


# **apiFileManagerCheckFileExistedGet**
> bool apiFileManagerCheckFileExistedGet(fileName, mode, subFolder)



### Example
```dart
import 'package:xh_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api = XhApi().getFileManagerApi();
final String fileName = fileName_example; // String | 
final UploadMode mode = ; // UploadMode | 
final String subFolder = subFolder_example; // String | 

try {
    final response = api.apiFileManagerCheckFileExistedGet(fileName, mode, subFolder);
    print(response);
} catch on DioError (e) {
    print('Exception when calling FileManagerApi->apiFileManagerCheckFileExistedGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fileName** | **String**|  | [optional] 
 **mode** | [**UploadMode**](.md)|  | [optional] 
 **subFolder** | **String**|  | [optional] 

### Return type

**bool**

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiFileManagerGetFileGet**
> apiFileManagerGetFileGet(name, returnName, mode, subFolder, contentType)



### Example
```dart
import 'package:xh_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api = XhApi().getFileManagerApi();
final String name = name_example; // String | 
final String returnName = returnName_example; // String | 
final UploadMode mode = ; // UploadMode | 
final String subFolder = subFolder_example; // String | 
final String contentType = contentType_example; // String | 

try {
    api.apiFileManagerGetFileGet(name, returnName, mode, subFolder, contentType);
} catch on DioError (e) {
    print('Exception when calling FileManagerApi->apiFileManagerGetFileGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**|  | [optional] 
 **returnName** | **String**|  | [optional] 
 **mode** | [**UploadMode**](.md)|  | [optional] 
 **subFolder** | **String**|  | [optional] 
 **contentType** | **String**|  | [optional] 

### Return type

void (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

