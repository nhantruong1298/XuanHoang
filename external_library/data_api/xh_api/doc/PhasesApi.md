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
> PhaseModel apiPhasesDetailsGet(idPhase)



### Example
```dart
import 'package:xh_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api = XhApi().getPhasesApi();
final String idPhase = idPhase_example; // String | 

try {
    final response = api.apiPhasesDetailsGet(idPhase);
    print(response);
} catch on DioError (e) {
    print('Exception when calling PhasesApi->apiPhasesDetailsGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **idPhase** | **String**|  | [optional] 

### Return type

[**PhaseModel**](PhaseModel.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiPhasesGet**
> BuiltList<PhaseModel> apiPhasesGet()



### Example
```dart
import 'package:xh_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api = XhApi().getPhasesApi();

try {
    final response = api.apiPhasesGet();
    print(response);
} catch on DioError (e) {
    print('Exception when calling PhasesApi->apiPhasesGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;PhaseModel&gt;**](PhaseModel.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiPhasesPost**
> ResultCRUDModel apiPhasesPost(phaseModel)



### Example
```dart
import 'package:xh_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api = XhApi().getPhasesApi();
final PhaseModel phaseModel = ; // PhaseModel | 

try {
    final response = api.apiPhasesPost(phaseModel);
    print(response);
} catch on DioError (e) {
    print('Exception when calling PhasesApi->apiPhasesPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **phaseModel** | [**PhaseModel**](PhaseModel.md)|  | [optional] 

### Return type

[**ResultCRUDModel**](ResultCRUDModel.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/_*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

