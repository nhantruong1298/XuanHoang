// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'do_check_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DoCheckResponse _$DoCheckResponseFromJson(Map<String, dynamic> json) =>
    DoCheckResponse(
      returnId: json['ReturnId'] as String?,
      message: json['Message'] as String?,
    );

Map<String, dynamic> _$DoCheckResponseToJson(DoCheckResponse instance) =>
    <String, dynamic>{
      'ReturnId': instance.returnId,
      'Message': instance.message,
    };
