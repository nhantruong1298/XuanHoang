# xh_api.api.AuthApi

## Load the API package
```dart
import 'package:xh_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiAuthChangeStatusUserPost**](AuthApi.md#apiauthchangestatususerpost) | **POST** /api/Auth/changeStatusUser | 
[**apiAuthLoginByUserIdGet**](AuthApi.md#apiauthloginbyuseridget) | **GET** /api/Auth/LoginByUserId | 
[**apiAuthLoginPost**](AuthApi.md#apiauthloginpost) | **POST** /api/Auth/Login | 
[**apiAuthPasswordChangePost**](AuthApi.md#apiauthpasswordchangepost) | **POST** /api/Auth/password/change | 
[**apiAuthPasswordForgotPost**](AuthApi.md#apiauthpasswordforgotpost) | **POST** /api/Auth/password/forgot | 
[**apiAuthPasswordResendEmailNewPost**](AuthApi.md#apiauthpasswordresendemailnewpost) | **POST** /api/Auth/password/resendEmailNew | 
[**apiAuthPasswordResetPost**](AuthApi.md#apiauthpasswordresetpost) | **POST** /api/Auth/password/reset | 
[**apiAuthRefreshtokenPost**](AuthApi.md#apiauthrefreshtokenpost) | **POST** /api/Auth/refreshtoken | 
[**apiAuthResendActivateEmailPost**](AuthApi.md#apiauthresendactivateemailpost) | **POST** /api/Auth/resendActivateEmail | 
[**apiAuthUserPost**](AuthApi.md#apiauthuserpost) | **POST** /api/Auth/User | 


# **apiAuthChangeStatusUserPost**
> apiAuthChangeStatusUserPost(userInfo)



### Example
```dart
import 'package:xh_api/api.dart';

final api = XhApi().getAuthApi();
final UserInfo userInfo = ; // UserInfo | 

try {
    api.apiAuthChangeStatusUserPost(userInfo);
} catch on DioError (e) {
    print('Exception when calling AuthApi->apiAuthChangeStatusUserPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userInfo** | [**UserInfo**](UserInfo.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/_*+json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiAuthLoginByUserIdGet**
> apiAuthLoginByUserIdGet(idLogin)



### Example
```dart
import 'package:xh_api/api.dart';

final api = XhApi().getAuthApi();
final String idLogin = idLogin_example; // String | 

try {
    api.apiAuthLoginByUserIdGet(idLogin);
} catch on DioError (e) {
    print('Exception when calling AuthApi->apiAuthLoginByUserIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **idLogin** | **String**|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiAuthLoginPost**
> apiAuthLoginPost(loginInfo)



### Example
```dart
import 'package:xh_api/api.dart';

final api = XhApi().getAuthApi();
final LoginInfo loginInfo = ; // LoginInfo | 

try {
    api.apiAuthLoginPost(loginInfo);
} catch on DioError (e) {
    print('Exception when calling AuthApi->apiAuthLoginPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **loginInfo** | [**LoginInfo**](LoginInfo.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/_*+json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiAuthPasswordChangePost**
> apiAuthPasswordChangePost(requestBody)



### Example
```dart
import 'package:xh_api/api.dart';

final api = XhApi().getAuthApi();
final BuiltMap<String, JsonObject> requestBody = ; // BuiltMap<String, JsonObject> | 

try {
    api.apiAuthPasswordChangePost(requestBody);
} catch on DioError (e) {
    print('Exception when calling AuthApi->apiAuthPasswordChangePost: $e\n');
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

# **apiAuthPasswordForgotPost**
> apiAuthPasswordForgotPost(accountForgotPassword)



### Example
```dart
import 'package:xh_api/api.dart';

final api = XhApi().getAuthApi();
final AccountForgotPassword accountForgotPassword = ; // AccountForgotPassword | 

try {
    api.apiAuthPasswordForgotPost(accountForgotPassword);
} catch on DioError (e) {
    print('Exception when calling AuthApi->apiAuthPasswordForgotPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountForgotPassword** | [**AccountForgotPassword**](AccountForgotPassword.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/_*+json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiAuthPasswordResendEmailNewPost**
> apiAuthPasswordResendEmailNewPost(signUpAccount)



### Example
```dart
import 'package:xh_api/api.dart';

final api = XhApi().getAuthApi();
final SignUpAccount signUpAccount = ; // SignUpAccount | 

try {
    api.apiAuthPasswordResendEmailNewPost(signUpAccount);
} catch on DioError (e) {
    print('Exception when calling AuthApi->apiAuthPasswordResendEmailNewPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **signUpAccount** | [**SignUpAccount**](SignUpAccount.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/_*+json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiAuthPasswordResetPost**
> apiAuthPasswordResetPost(requestBody)



### Example
```dart
import 'package:xh_api/api.dart';

final api = XhApi().getAuthApi();
final BuiltMap<String, JsonObject> requestBody = ; // BuiltMap<String, JsonObject> | 

try {
    api.apiAuthPasswordResetPost(requestBody);
} catch on DioError (e) {
    print('Exception when calling AuthApi->apiAuthPasswordResetPost: $e\n');
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

# **apiAuthRefreshtokenPost**
> apiAuthRefreshtokenPost()



### Example
```dart
import 'package:xh_api/api.dart';

final api = XhApi().getAuthApi();

try {
    api.apiAuthRefreshtokenPost();
} catch on DioError (e) {
    print('Exception when calling AuthApi->apiAuthRefreshtokenPost: $e\n');
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

# **apiAuthResendActivateEmailPost**
> apiAuthResendActivateEmailPost(accountForgotPassword)



### Example
```dart
import 'package:xh_api/api.dart';

final api = XhApi().getAuthApi();
final AccountForgotPassword accountForgotPassword = ; // AccountForgotPassword | 

try {
    api.apiAuthResendActivateEmailPost(accountForgotPassword);
} catch on DioError (e) {
    print('Exception when calling AuthApi->apiAuthResendActivateEmailPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountForgotPassword** | [**AccountForgotPassword**](AccountForgotPassword.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/_*+json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiAuthUserPost**
> apiAuthUserPost(newAccount)



### Example
```dart
import 'package:xh_api/api.dart';

final api = XhApi().getAuthApi();
final NewAccount newAccount = ; // NewAccount | 

try {
    api.apiAuthUserPost(newAccount);
} catch on DioError (e) {
    print('Exception when calling AuthApi->apiAuthUserPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **newAccount** | [**NewAccount**](NewAccount.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/_*+json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

