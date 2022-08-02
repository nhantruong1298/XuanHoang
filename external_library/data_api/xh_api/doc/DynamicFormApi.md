# xh_api.api.DynamicFormApi

## Load the API package
```dart
import 'package:xh_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**formGroupSettingsGet**](DynamicFormApi.md#formgroupsettingsget) | **GET** /FormGroupSettings | 


# **formGroupSettingsGet**
> formGroupSettingsGet(query)



### Example
```dart
import 'package:xh_api/api.dart';

final api = XhApi().getDynamicFormApi();
final BuiltMap<String, String> query = ; // BuiltMap<String, String> | 

try {
    api.formGroupSettingsGet(query);
} catch on DioError (e) {
    print('Exception when calling DynamicFormApi->formGroupSettingsGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | [**BuiltMap&lt;String, String&gt;**](String.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

