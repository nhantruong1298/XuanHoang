//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'result_crud_model.g.dart';

/// ResultCRUDModel
///
/// Properties:
/// * [returnId] 
/// * [message] 
abstract class ResultCRUDModel implements Built<ResultCRUDModel, ResultCRUDModelBuilder> {
    @BuiltValueField(wireName: r'ReturnId')
    String? get returnId;

    @BuiltValueField(wireName: r'Message')
    String? get message;

    ResultCRUDModel._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(ResultCRUDModelBuilder b) => b;

    factory ResultCRUDModel([void updates(ResultCRUDModelBuilder b)]) = _$ResultCRUDModel;

    @BuiltValueSerializer(custom: true)
    static Serializer<ResultCRUDModel> get serializer => _$ResultCRUDModelSerializer();
}

class _$ResultCRUDModelSerializer implements StructuredSerializer<ResultCRUDModel> {
    @override
    final Iterable<Type> types = const [ResultCRUDModel, _$ResultCRUDModel];

    @override
    final String wireName = r'ResultCRUDModel';

    @override
    Iterable<Object?> serialize(Serializers serializers, ResultCRUDModel object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.returnId != null) {
            result
                ..add(r'ReturnId')
                ..add(serializers.serialize(object.returnId,
                    specifiedType: const FullType.nullable(String)));
        }
        if (object.message != null) {
            result
                ..add(r'Message')
                ..add(serializers.serialize(object.message,
                    specifiedType: const FullType.nullable(String)));
        }
        return result;
    }

    @override
    ResultCRUDModel deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = ResultCRUDModelBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'ReturnId':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType.nullable(String)) as String?;
                    if (valueDes == null) continue;
                    result.returnId = valueDes;
                    break;
                case r'Message':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType.nullable(String)) as String?;
                    if (valueDes == null) continue;
                    result.message = valueDes;
                    break;
            }
        }
        return result.build();
    }
}

