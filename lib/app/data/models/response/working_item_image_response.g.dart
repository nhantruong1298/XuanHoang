// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'working_item_image_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WorkingItemImageResponse _$WorkingItemImageResponseFromJson(
        Map<String, dynamic> json) =>
    WorkingItemImageResponse(
      description: json['Description'] as String?,
      idWorkingItem: json['IdWorkingItem'] as String?,
      idWorkingItemHistoryPicture:
          json['IdWorkingItemHistoryPicture'] as String?,
      picture: json['Picture'] as String?,
      fullName: json['FullName'] as String?,
      idWorkingItemStatus: json['IdWorkingItemStatus'] as String?,
      isDeleted: json['IsDeleted'] as String?,
      isReported: json['IsReported'] as String?,
      reason: json['Reason'] as String?,
      statusName: json['StatusName'] as String?,
    );

Map<String, dynamic> _$WorkingItemImageResponseToJson(
        WorkingItemImageResponse instance) =>
    <String, dynamic>{
      'IdWorkingItem': instance.idWorkingItem,
      'Description': instance.description,
      'Picture': instance.picture,
      'IdWorkingItemHistoryPicture': instance.idWorkingItemHistoryPicture,
      'IsDeleted': instance.isDeleted,
      'IdWorkingItemStatus': instance.idWorkingItemStatus,
      'StatusName': instance.statusName,
      'Reason': instance.reason,
      'IsReported': instance.isReported,
      'FullName': instance.fullName,
    };
