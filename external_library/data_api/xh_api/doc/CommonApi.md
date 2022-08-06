# xh_api.api.CommonApi

## Load the API package
```dart
import 'package:xh_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getComboBoxInfoGet**](CommonApi.md#getcomboboxinfoget) | **GET** /GetComboBoxInfo | 


# **getComboBoxInfoGet**
> getComboBoxInfoGet(comboBoxList, strObject, mode, extraData)



### Example
```dart
import 'package:xh_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api = XhApi().getCommonApi();
final String comboBoxList = comboBoxList_example; // String | 
final String strObject = strObject_example; // String | 
final String mode = mode_example; // String | 
final String extraData = extraData_example; // String | 

try {
    api.getComboBoxInfoGet(comboBoxList, strObject, mode, extraData);
} catch on DioError (e) {
    print('Exception when calling CommonApi->getComboBoxInfoGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **comboBoxList** | **String**|  | [optional] 
 **strObject** | **String**|  | [optional] 
 **mode** | **String**|  | [optional] 
 **extraData** | **String**|  | [optional] 

### Return type

void (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

