//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'do_check_image_model.g.dart';

/// DoCheckImageModel
///
/// Properties:
/// * [idWorkingItem] 
/// * [sessionId] 
/// * [description] 
/// * [picture] 
/// * [idWorkingItemHistoryPicture] 
/// * [isDeleted] 
abstract class DoCheckImageModel implements Built<DoCheckImageModel, DoCheckImageModelBuilder> {
    @BuiltValueField(wireName: r'IdWorkingItem')
    String? get idWorkingItem;

    @BuiltValueField(wireName: r'SessionId')
    String? get sessionId;

    @BuiltValueField(wireName: r'Description')
    String? get description;

    @BuiltValueField(wireName: r'Picture')
    String? get picture;

    @BuiltValueField(wireName: r'IdWorkingItemHistoryPicture')
    String? get idWorkingItemHistoryPicture;

    @BuiltValueField(wireName: r'IsDeleted')
    String? get isDeleted;

    DoCheckImageModel._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(DoCheckImageModelBuilder b) => b;

    factory DoCheckImageModel([void updates(DoCheckImageModelBuilder b)]) = _$DoCheckImageModel;

    @BuiltValueSerializer(custom: true)
    static Serializer<DoCheckImageModel> get serializer => _$DoCheckImageModelSerializer();
}

class _$DoCheckImageModelSerializer implements StructuredSerializer<DoCheckImageModel> {
    @override
    final Iterable<Type> types = const [DoCheckImageModel, _$DoCheckImageModel];

    @override
    final String wireName = r'DoCheckImageModel';

    @override
    Iterable<Object?> serialize(Serializers serializers, DoCheckImageModel object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.idWorkingItem != null) {
            result
                ..add(r'IdWorkingItem')
                ..add(serializers.serialize(object.idWorkingItem,
                    specifiedType: const FullType.nullable(String)));
        }
        if (object.sessionId != null) {
            result
                ..add(r'SessionId')
                ..add(serializers.serialize(object.sessionId,
                    specifiedType: const FullType.nullable(String)));
        }
        if (object.description != null) {
            result
                ..add(r'Description')
                ..add(serializers.serialize(object.description,
                    specifiedType: const FullType.nullable(String)));
        }
        if (object.picture != null) {
            result
                ..add(r'Picture')
                ..add(serializers.serialize(object.picture,
                    specifiedType: const FullType.nullable(String)));
        }
        if (object.idWorkingItemHistoryPicture != null) {
            result
                ..add(r'IdWorkingItemHistoryPicture')
                ..add(serializers.serialize(object.idWorkingItemHistoryPicture,
                    specifiedType: const FullType.nullable(String)));
        }
        if (object.isDeleted != null) {
            result
                ..add(r'IsDeleted')
                ..add(serializers.serialize(object.isDeleted,
                    specifiedType: const FullType.nullable(String)));
        }
        return result;
    }

    @override
    DoCheckImageModel deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = DoCheckImageModelBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'IdWorkingItem':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType.nullable(String)) as String?;
                    if (valueDes == null) continue;
                    result.idWorkingItem = valueDes;
                    break;
                case r'SessionId':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType.nullable(String)) as String?;
                    if (valueDes == null) continue;
                    result.sessionId = valueDes;
                    break;
                case r'Description':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType.nullable(String)) as String?;
                    if (valueDes == null) continue;
                    result.description = valueDes;
                    break;
                case r'Picture':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType.nullable(String)) as String?;
                    if (valueDes == null) continue;
                    result.picture = valueDes;
                    break;
                case r'IdWorkingItemHistoryPicture':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType.nullable(String)) as String?;
                    if (valueDes == null) continue;
                    result.idWorkingItemHistoryPicture = valueDes;
                    break;
                case r'IsDeleted':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType.nullable(String)) as String?;
                    if (valueDes == null) continue;
                    result.isDeleted = valueDes;
                    break;
            }
        }
        return result.build();
    }
}

