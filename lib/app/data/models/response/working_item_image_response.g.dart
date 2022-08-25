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
    );

Map<String, dynamic> _$WorkingItemImageResponseToJson(
        WorkingItemImageResponse instance) =>
    <String, dynamic>{
      'IdWorkingItem': instance.idWorkingItem,
      'Description': instance.description,
      'Picture': instance.picture,
      'IdWorkingItemHistoryPicture': instance.idWorkingItemHistoryPicture,
    };
