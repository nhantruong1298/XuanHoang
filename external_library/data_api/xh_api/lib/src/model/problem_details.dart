//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'problem_details.g.dart';

/// ProblemDetails
///
/// Properties:
/// * [type] 
/// * [title] 
/// * [status] 
/// * [detail] 
/// * [instance] 
abstract class ProblemDetails implements Built<ProblemDetails, ProblemDetailsBuilder> {
    @BuiltValueField(wireName: r'type')
    String? get type;

    @BuiltValueField(wireName: r'title')
    String? get title;

    @BuiltValueField(wireName: r'status')
    int? get status;

    @BuiltValueField(wireName: r'detail')
    String? get detail;

    @BuiltValueField(wireName: r'instance')
    String? get instance;

    ProblemDetails._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(ProblemDetailsBuilder b) => b;

    factory ProblemDetails([void updates(ProblemDetailsBuilder b)]) = _$ProblemDetails;

    @BuiltValueSerializer(custom: true)
    static Serializer<ProblemDetails> get serializer => _$ProblemDetailsSerializer();
}

class _$ProblemDetailsSerializer implements StructuredSerializer<ProblemDetails> {
    @override
    final Iterable<Type> types = const [ProblemDetails, _$ProblemDetails];

    @override
    final String wireName = r'ProblemDetails';

    @override
    Iterable<Object?> serialize(Serializers serializers, ProblemDetails object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.type != null) {
            result
                ..add(r'type')
                ..add(serializers.serialize(object.type,
                    specifiedType: const FullType.nullable(String)));
        }
        if (object.title != null) {
            result
                ..add(r'title')
                ..add(serializers.serialize(object.title,
                    specifiedType: const FullType.nullable(String)));
        }
        if (object.status != null) {
            result
                ..add(r'status')
                ..add(serializers.serialize(object.status,
                    specifiedType: const FullType.nullable(int)));
        }
        if (object.detail != null) {
            result
                ..add(r'detail')
                ..add(serializers.serialize(object.detail,
                    specifiedType: const FullType.nullable(String)));
        }
        if (object.instance != null) {
            result
                ..add(r'instance')
                ..add(serializers.serialize(object.instance,
                    specifiedType: const FullType.nullable(String)));
        }
        return result;
    }

    @override
    ProblemDetails deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = ProblemDetailsBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'type':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType.nullable(String)) as String?;
                    if (valueDes == null) continue;
                    result.type = valueDes;
                    break;
                case r'title':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType.nullable(String)) as String?;
                    if (valueDes == null) continue;
                    result.title = valueDes;
                    break;
                case r'status':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType.nullable(int)) as int?;
                    if (valueDes == null) continue;
                    result.status = valueDes;
                    break;
                case r'detail':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType.nullable(String)) as String?;
                    if (valueDes == null) continue;
                    result.detail = valueDes;
                    break;
                case r'instance':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType.nullable(String)) as String?;
                    if (valueDes == null) continue;
                    result.instance = valueDes;
                    break;
            }
        }
        return result.build();
    }
}

