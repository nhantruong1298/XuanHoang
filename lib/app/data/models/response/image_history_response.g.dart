// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image_history_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ImageHistoryResponse _$ImageHistoryResponseFromJson(
        Map<String, dynamic> json) =>
    ImageHistoryResponse(
      idWorkingItem: json['IdWorkingItem'] as String?,
      picture: json['Picture'] as String?,
      fullName: json['FullName'] as String?,
      idWorkingItemStatus: json['IdWorkingItemStatus'] as String?,
      pictures: (json['Pictures'] as List<dynamic>?)
          ?.map((e) => PictureResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ImageHistoryResponseToJson(
        ImageHistoryResponse instance) =>
    <String, dynamic>{
      'IdWorkingItem': instance.idWorkingItem,
      'Pictures': instance.pictures,
      'IdWorkingItemStatus': instance.idWorkingItemStatus,
      'Picture': instance.picture,
      'FullName': instance.fullName,
    };

PictureResponse _$PictureResponseFromJson(Map<String, dynamic> json) =>
    PictureResponse(
      item: json['Picture'] as String?,
    );

Map<String, dynamic> _$PictureResponseToJson(PictureResponse instance) =>
    <String, dynamic>{
      'Picture': instance.item,
    };
