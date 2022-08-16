// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_report_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateReportResponse _$UpdateReportResponseFromJson(
        Map<String, dynamic> json) =>
    UpdateReportResponse(
      returnId: json['ReturnId'] as String?,
      message: json['Message'] as String?,
    );

Map<String, dynamic> _$UpdateReportResponseToJson(
        UpdateReportResponse instance) =>
    <String, dynamic>{
      'ReturnId': instance.returnId,
      'Message': instance.message,
    };
