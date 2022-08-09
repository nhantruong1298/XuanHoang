//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'working_item_model.g.dart';

/// WorkingItemModel
///
/// Properties:
/// * [idWorkingItem] 
/// * [idWorkingTerm] 
/// * [itemName] 
/// * [description] 
/// * [idWorkingItemStatus] 
/// * [isDeleted] 
abstract class WorkingItemModel implements Built<WorkingItemModel, WorkingItemModelBuilder> {
    @BuiltValueField(wireName: r'IdWorkingItem')
    String? get idWorkingItem;

    @BuiltValueField(wireName: r'IdWorkingTerm')
    String? get idWorkingTerm;

    @BuiltValueField(wireName: r'ItemName')
    String? get itemName;

    @BuiltValueField(wireName: r'Description')
    String? get description;

    @BuiltValueField(wireName: r'IdWorkingItemStatus')
    String? get idWorkingItemStatus;

    @BuiltValueField(wireName: r'IsDeleted')
    String? get isDeleted;

    WorkingItemModel._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(WorkingItemModelBuilder b) => b;

    factory WorkingItemModel([void updates(WorkingItemModelBuilder b)]) = _$WorkingItemModel;

    @BuiltValueSerializer(custom: true)
    static Serializer<WorkingItemModel> get serializer => _$WorkingItemModelSerializer();
}

class _$WorkingItemModelSerializer implements StructuredSerializer<WorkingItemModel> {
    @override
    final Iterable<Type> types = const [WorkingItemModel, _$WorkingItemModel];

    @override
    final String wireName = r'WorkingItemModel';

    @override
    Iterable<Object?> serialize(Serializers serializers, WorkingItemModel object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.idWorkingItem != null) {
            result
                ..add(r'IdWorkingItem')
                ..add(serializers.serialize(object.idWorkingItem,
                    specifiedType: const FullType.nullable(String)));
        }
        if (object.idWorkingTerm != null) {
            result
                ..add(r'IdWorkingTerm')
                ..add(serializers.serialize(object.idWorkingTerm,
                    specifiedType: const FullType.nullable(String)));
        }
        if (object.itemName != null) {
            result
                ..add(r'ItemName')
                ..add(serializers.serialize(object.itemName,
                    specifiedType: const FullType.nullable(String)));
        }
        if (object.description != null) {
            result
                ..add(r'Description')
                ..add(serializers.serialize(object.description,
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
    WorkingItemModel deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = WorkingItemModelBuilder();

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
                case r'IdWorkingTerm':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType.nullable(String)) as String?;
                    if (valueDes == null) continue;
                    result.idWorkingTerm = valueDes;
                    break;
                case r'ItemName':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType.nullable(String)) as String?;
                    if (valueDes == null) continue;
                    result.itemName = valueDes;
                    break;
                case r'Description':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType.nullable(String)) as String?;
                    if (valueDes == null) continue;
                    result.description = valueDes;
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

