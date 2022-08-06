# xh_api.api.UsersApi

## Load the API package
```dart
import 'package:xh_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiUsersChangeProfileOtherUserPost**](UsersApi.md#apiuserschangeprofileotheruserpost) | **POST** /api/Users/ChangeProfileOtherUser | 
[**apiUsersCheckExistUserByFieldGet**](UsersApi.md#apiuserscheckexistuserbyfieldget) | **GET** /api/Users/CheckExistUserByField | 
[**apiUsersEditProfilePost**](UsersApi.md#apiuserseditprofilepost) | **POST** /api/Users/EditProfile | 
[**apiUsersGet**](UsersApi.md#apiusersget) | **GET** /api/Users | 
[**apiUsersGetAllUserRoleGet**](UsersApi.md#apiusersgetalluserroleget) | **GET** /api/Users/GetAllUserRole | 
[**apiUsersGetCompanyNameFromIdLoginGet**](UsersApi.md#apiusersgetcompanynamefromidloginget) | **GET** /api/Users/GetCompanyNameFromIdLogin | 
[**apiUsersGetFilterOptionsUserGet**](UsersApi.md#apiusersgetfilteroptionsuserget) | **GET** /api/Users/GetFilterOptionsUser | 
[**apiUsersGetUserByEmailGet**](UsersApi.md#apiusersgetuserbyemailget) | **GET** /api/Users/GetUserByEmail | 
[**apiUsersGetUserByIdGet**](UsersApi.md#apiusersgetuserbyidget) | **GET** /api/Users/GetUserById | 
[**apiUsersGetUserByIdLoginGet**](UsersApi.md#apiusersgetuserbyidloginget) | **GET** /api/Users/GetUserByIdLogin | 
[**apiUsersListUserRoleByUserIdGet**](UsersApi.md#apiuserslistuserrolebyuseridget) | **GET** /api/Users/ListUserRoleByUserId | 
[**apiUsersListUserRoleInclueUserIdGet**](UsersApi.md#apiuserslistuserroleinclueuseridget) | **GET** /api/Users/ListUserRoleInclueUserId | 
[**apiUsersPost**](UsersApi.md#apiuserspost) | **POST** /api/Users | 
[**apiUsersProfileGet**](UsersApi.md#apiusersprofileget) | **GET** /api/Users/Profile | 
[**apiUsersRemoveAvatarPost**](UsersApi.md#apiusersremoveavatarpost) | **POST** /api/Users/RemoveAvatar | 
[**apiUsersSaveRoleForUserPost**](UsersApi.md#apiuserssaveroleforuserpost) | **POST** /api/Users/SaveRoleForUser | 
[**apiUsersUploadAvatarPost**](UsersApi.md#apiusersuploadavatarpost) | **POST** /api/Users/UploadAvatar | 


# **apiUsersChangeProfileOtherUserPost**
> apiUsersChangeProfileOtherUserPost(userProfileDetail)



### Example
```dart
import 'package:xh_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api = XhApi().getUsersApi();
final UserProfileDetail userProfileDetail = ; // UserProfileDetail | 

try {
    api.apiUsersChangeProfileOtherUserPost(userProfileDetail);
} catch on DioError (e) {
    print('Exception when calling UsersApi->apiUsersChangeProfileOtherUserPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userProfileDetail** | [**UserProfileDetail**](UserProfileDetail.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/_*+json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiUsersCheckExistUserByFieldGet**
> apiUsersCheckExistUserByFieldGet(fieldName, fieldValue)



### Example
```dart
import 'package:xh_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api = XhApi().getUsersApi();
final String fieldName = fieldName_example; // String | 
final String fieldValue = fieldValue_example; // String | 

try {
    api.apiUsersCheckExistUserByFieldGet(fieldName, fieldValue);
} catch on DioError (e) {
    print('Exception when calling UsersApi->apiUsersCheckExistUserByFieldGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fieldName** | **String**|  | [optional] 
 **fieldValue** | **String**|  | [optional] 

### Return type

void (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiUsersEditProfilePost**
> apiUsersEditProfilePost(userProfileDetail)



### Example
```dart
import 'package:xh_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api = XhApi().getUsersApi();
final UserProfileDetail userProfileDetail = ; // UserProfileDetail | 

try {
    api.apiUsersEditProfilePost(userProfileDetail);
} catch on DioError (e) {
    print('Exception when calling UsersApi->apiUsersEditProfilePost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userProfileDetail** | [**UserProfileDetail**](UserProfileDetail.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/_*+json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiUsersGet**
> apiUsersGet()



### Example
```dart
import 'package:xh_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api = XhApi().getUsersApi();

try {
    api.apiUsersGet();
} catch on DioError (e) {
    print('Exception when calling UsersApi->apiUsersGet: $e\n');
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
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiUsersGetAllUserRoleGet**
> apiUsersGetAllUserRoleGet()



### Example
```dart
import 'package:xh_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api = XhApi().getUsersApi();

try {
    api.apiUsersGetAllUserRoleGet();
} catch on DioError (e) {
    print('Exception when calling UsersApi->apiUsersGetAllUserRoleGet: $e\n');
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
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiUsersGetCompanyNameFromIdLoginGet**
> apiUsersGetCompanyNameFromIdLoginGet(idLogin)



### Example
```dart
import 'package:xh_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api = XhApi().getUsersApi();
final String idLogin = idLogin_example; // String | 

try {
    api.apiUsersGetCompanyNameFromIdLoginGet(idLogin);
} catch on DioError (e) {
    print('Exception when calling UsersApi->apiUsersGetCompanyNameFromIdLoginGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **idLogin** | **String**|  | [optional] 

### Return type

void (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiUsersGetFilterOptionsUserGet**
> apiUsersGetFilterOptionsUserGet()



### Example
```dart
import 'package:xh_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api = XhApi().getUsersApi();

try {
    api.apiUsersGetFilterOptionsUserGet();
} catch on DioError (e) {
    print('Exception when calling UsersApi->apiUsersGetFilterOptionsUserGet: $e\n');
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
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiUsersGetUserByEmailGet**
> apiUsersGetUserByEmailGet(email)



### Example
```dart
import 'package:xh_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api = XhApi().getUsersApi();
final String email = email_example; // String | 

try {
    api.apiUsersGetUserByEmailGet(email);
} catch on DioError (e) {
    print('Exception when calling UsersApi->apiUsersGetUserByEmailGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email** | **String**|  | [optional] 

### Return type

void (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiUsersGetUserByIdGet**
> apiUsersGetUserByIdGet(idPerson)



### Example
```dart
import 'package:xh_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api = XhApi().getUsersApi();
final String idPerson = idPerson_example; // String | 

try {
    api.apiUsersGetUserByIdGet(idPerson);
} catch on DioError (e) {
    print('Exception when calling UsersApi->apiUsersGetUserByIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **idPerson** | **String**|  | [optional] 

### Return type

void (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiUsersGetUserByIdLoginGet**
> apiUsersGetUserByIdLoginGet(idPerson, email, fullNameId, pageIndex, pageSize, idXH, fullName)



### Example
```dart
import 'package:xh_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api = XhApi().getUsersApi();
final String idPerson = idPerson_example; // String | 
final String email = email_example; // String | 
final String fullNameId = fullNameId_example; // String | 
final int pageIndex = 56; // int | 
final int pageSize = 56; // int | 
final String idXH = idXH_example; // String | 
final String fullName = fullName_example; // String | 

try {
    api.apiUsersGetUserByIdLoginGet(idPerson, email, fullNameId, pageIndex, pageSize, idXH, fullName);
} catch on DioError (e) {
    print('Exception when calling UsersApi->apiUsersGetUserByIdLoginGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **idPerson** | **String**|  | [optional] 
 **email** | **String**|  | [optional] 
 **fullNameId** | **String**|  | [optional] 
 **pageIndex** | **int**|  | [optional] 
 **pageSize** | **int**|  | [optional] 
 **idXH** | **String**|  | [optional] 
 **fullName** | **String**|  | [optional] 

### Return type

void (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiUsersListUserRoleByUserIdGet**
> apiUsersListUserRoleByUserIdGet(userId)



### Example
```dart
import 'package:xh_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api = XhApi().getUsersApi();
final String userId = userId_example; // String | 

try {
    api.apiUsersListUserRoleByUserIdGet(userId);
} catch on DioError (e) {
    print('Exception when calling UsersApi->apiUsersListUserRoleByUserIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**|  | [optional] 

### Return type

void (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiUsersListUserRoleInclueUserIdGet**
> apiUsersListUserRoleInclueUserIdGet(idPerson)



### Example
```dart
import 'package:xh_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api = XhApi().getUsersApi();
final int idPerson = 56; // int | 

try {
    api.apiUsersListUserRoleInclueUserIdGet(idPerson);
} catch on DioError (e) {
    print('Exception when calling UsersApi->apiUsersListUserRoleInclueUserIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **idPerson** | **int**|  | [optional] 

### Return type

void (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiUsersPost**
> apiUsersPost(requestBody)



### Example
```dart
import 'package:xh_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api = XhApi().getUsersApi();
final BuiltMap<String, JsonObject> requestBody = ; // BuiltMap<String, JsonObject> | 

try {
    api.apiUsersPost(requestBody);
} catch on DioError (e) {
    print('Exception when calling UsersApi->apiUsersPost: $e\n');
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
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiUsersProfileGet**
> apiUsersProfileGet()



### Example
```dart
import 'package:xh_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api = XhApi().getUsersApi();

try {
    api.apiUsersProfileGet();
} catch on DioError (e) {
    print('Exception when calling UsersApi->apiUsersProfileGet: $e\n');
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
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiUsersRemoveAvatarPost**
> apiUsersRemoveAvatarPost()



### Example
```dart
import 'package:xh_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api = XhApi().getUsersApi();

try {
    api.apiUsersRemoveAvatarPost();
} catch on DioError (e) {
    print('Exception when calling UsersApi->apiUsersRemoveAvatarPost: $e\n');
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
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiUsersSaveRoleForUserPost**
> apiUsersSaveRoleForUserPost(userRoleUpdateModel)



### Example
```dart
import 'package:xh_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api = XhApi().getUsersApi();
final UserRoleUpdateModel userRoleUpdateModel = ; // UserRoleUpdateModel | 

try {
    api.apiUsersSaveRoleForUserPost(userRoleUpdateModel);
} catch on DioError (e) {
    print('Exception when calling UsersApi->apiUsersSaveRoleForUserPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userRoleUpdateModel** | [**UserRoleUpdateModel**](UserRoleUpdateModel.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/_*+json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiUsersUploadAvatarPost**
> apiUsersUploadAvatarPost()



### Example
```dart
import 'package:xh_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api = XhApi().getUsersApi();

try {
    api.apiUsersUploadAvatarPost();
} catch on DioError (e) {
    print('Exception when calling UsersApi->apiUsersUploadAvatarPost: $e\n');
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
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

