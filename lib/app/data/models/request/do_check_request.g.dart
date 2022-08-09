// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'do_check_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DoCheckRequest _$DoCheckRequestFromJson(Map<String, dynamic> json) =>
    DoCheckRequest(
      idWorkingItem: json['IdWorkingItem'] as String?,
      sessionId: json['SessionId'] as String?,
      reason: json['Reason'] as String?,
      idWorkingItemStatus: json['IdWorkingItemStatus'] as String?,
      isDeleted: json['IsDeleted'] as String?,
    );

Map<String, dynamic> _$DoCheckRequestToJson(DoCheckRequest instance) =>
    <String, dynamic>{
      'IdWorkingItem': instance.idWorkingItem,
      'SessionId': instance.sessionId,
      'Reason': instance.reason,
      'IdWorkingItemStatus': instance.idWorkingItemStatus,
      'IsDeleted': instance.isDeleted,
    };
