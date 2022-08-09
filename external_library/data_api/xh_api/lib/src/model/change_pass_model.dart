//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'change_pass_model.g.dart';

/// ChangePassModel
///
/// Properties:
/// * [newPassword] 
/// * [retypePassword] 
abstract class ChangePassModel implements Built<ChangePassModel, ChangePassModelBuilder> {
    @BuiltValueField(wireName: r'NewPassword')
    String? get newPassword;

    @BuiltValueField(wireName: r'RetypePassword')
    String? get retypePassword;

    ChangePassModel._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(ChangePassModelBuilder b) => b;

    factory ChangePassModel([void updates(ChangePassModelBuilder b)]) = _$ChangePassModel;

    @BuiltValueSerializer(custom: true)
    static Serializer<ChangePassModel> get serializer => _$ChangePassModelSerializer();
}

class _$ChangePassModelSerializer implements StructuredSerializer<ChangePassModel> {
    @override
    final Iterable<Type> types = const [ChangePassModel, _$ChangePassModel];

    @override
    final String wireName = r'ChangePassModel';

    @override
    Iterable<Object?> serialize(Serializers serializers, ChangePassModel object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.newPassword != null) {
            result
                ..add(r'NewPassword')
                ..add(serializers.serialize(object.newPassword,
                    specifiedType: const FullType.nullable(String)));
        }
        if (object.retypePassword != null) {
            result
                ..add(r'RetypePassword')
                ..add(serializers.serialize(object.retypePassword,
                    specifiedType: const FullType.nullable(String)));
        }
        return result;
    }

    @override
    ChangePassModel deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = ChangePassModelBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'NewPassword':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType.nullable(String)) as String?;
                    if (valueDes == null) continue;
                    result.newPassword = valueDes;
                    break;
                case r'RetypePassword':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType.nullable(String)) as String?;
                    if (valueDes == null) continue;
                    result.retypePassword = valueDes;
                    break;
            }
        }
        return result.build();
    }
}

