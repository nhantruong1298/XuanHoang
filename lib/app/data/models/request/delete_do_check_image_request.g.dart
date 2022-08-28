// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_do_check_image_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DeleteDoCheckImageRequest _$DeleteDoCheckImageRequestFromJson(
        Map<String, dynamic> json) =>
    DeleteDoCheckImageRequest(
      description: json['Description'] as String?,
      idWorkingItem: json['IdWorkingItem'] as String?,
      idWorkingItemHistoryPicture:
          json['IdWorkingItemHistoryPicture'] as String?,
      isDeleted: json['IsDeleted'] as String?,
      picture: json['Picture'] as String?,
      fullName: json['FullName'] as String?,
      idWorkingItemStatus: json['IdWorkingItemStatus'] as String?,
      isReported: json['IsReported'] as String?,
      reason: json['Reason'] as String?,
      statusName: json['StatusName'] as String?,
    );

Map<String, dynamic> _$DeleteDoCheckImageRequestToJson(
        DeleteDoCheckImageRequest instance) =>
    <String, dynamic>{
      'IdWorkingItem': instance.idWorkingItem,
      'Picture': instance.picture,
      'Description': instance.description,
      'IdWorkingItemHistoryPicture': instance.idWorkingItemHistoryPicture,
      'IsDeleted': instance.isDeleted,
      'IdWorkingItemStatus': instance.idWorkingItemStatus,
      'StatusName': instance.statusName,
      'Reason': instance.reason,
      'IsReported': instance.isReported,
      'FullName': instance.fullName,
    };
