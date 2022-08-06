//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'dart:async';

import 'package:built_value/serializer.dart';
import 'package:dio/dio.dart';

import 'package:xh_api/src/api_util.dart';

class CommonApi {

  final Dio _dio;

  final Serializers _serializers;

  const CommonApi(this._dio, this._serializers);

  /// getComboBoxInfoGet
  /// 
  ///
  /// Parameters:
  /// * [comboBoxList] 
  /// * [strObject] 
  /// * [mode] 
  /// * [extraData] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future]
  /// Throws [DioError] if API call or serialization fails
  Future<Response<void>> getComboBoxInfoGet({ 
    String? comboBoxList,
    String? strObject,
    String? mode,
    String? extraData,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/GetComboBoxInfo';
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'apiKey',
            'name': 'Bearer',
            'keyName': 'Authorization',
            'where': 'header',
          },
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (comboBoxList != null) r'comboBoxList': encodeQueryParameter(_serializers, comboBoxList, const FullType(String)),
      if (strObject != null) r'strObject': encodeQueryParameter(_serializers, strObject, const FullType(String)),
      if (mode != null) r'mode': encodeQueryParameter(_serializers, mode, const FullType(String)),
      if (extraData != null) r'extraData': encodeQueryParameter(_serializers, extraData, const FullType(String)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    return _response;
  }

}
