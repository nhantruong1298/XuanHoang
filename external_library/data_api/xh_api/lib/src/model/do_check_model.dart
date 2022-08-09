//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'do_check_model.g.dart';

/// DoCheckModel
///
/// Properties:
/// * [idWorkingItem] 
/// * [sessionId] 
/// * [reason] 
/// * [idWorkingItemStatus] 
/// * [isDeleted] 
abstract class DoCheckModel implements Built<DoCheckModel, DoCheckModelBuilder> {
    @BuiltValueField(wireName: r'IdWorkingItem')
    String? get idWorkingItem;

    @BuiltValueField(wireName: r'SessionId')
    String? get sessionId;

    @BuiltValueField(wireName: r'Reason')
    String? get reason;

    @BuiltValueField(wireName: r'IdWorkingItemStatus')
    String? get idWorkingItemStatus;

    @BuiltValueField(wireName: r'IsDeleted')
    String? get isDeleted;

    DoCheckModel._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(DoCheckModelBuilder b) => b;

    factory DoCheckModel([void updates(DoCheckModelBuilder b)]) = _$DoCheckModel;

    @BuiltValueSerializer(custom: true)
    static Serializer<DoCheckModel> get serializer => _$DoCheckModelSerializer();
}

class _$DoCheckModelSerializer implements StructuredSerializer<DoCheckModel> {
    @override
    final Iterable<Type> types = const [DoCheckModel, _$DoCheckModel];

    @override
    final String wireName = r'DoCheckModel';

    @override
    Iterable<Object?> serialize(Serializers serializers, DoCheckModel object,
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
        if (object.reason != null) {
            result
                ..add(r'Reason')
                ..add(serializers.serialize(object.reason,
                    specifiedType: const FullType.nullable(String)));
        }
        if (object.idWorkingItemStatus != null) {
            result
                ..add(r'IdWorkingItemStatus')
                ..add(serializers.serialize(object.idWorkingItemStatus,
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
    DoCheckModel deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = DoCheckModelBuilder();

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
                case r'Reason':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType.nullable(String)) as String?;
                    if (valueDes == null) continue;
                    result.reason = valueDes;
                    break;
                case r'IdWorkingItemStatus':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType.nullable(String)) as String?;
                    if (valueDes == null) continue;
                    result.idWorkingItemStatus = valueDes;
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

