//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'login_info.g.dart';

/// LoginInfo
///
/// Properties:
/// * [username] 
/// * [password] 
/// * [passwordHash] 
abstract class LoginInfo implements Built<LoginInfo, LoginInfoBuilder> {
    @BuiltValueField(wireName: r'username')
    String? get username;

    @BuiltValueField(wireName: r'password')
    String? get password;

    @BuiltValueField(wireName: r'passwordHash')
    String? get passwordHash;

    LoginInfo._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(LoginInfoBuilder b) => b;

    factory LoginInfo([void updates(LoginInfoBuilder b)]) = _$LoginInfo;

    @BuiltValueSerializer(custom: true)
    static Serializer<LoginInfo> get serializer => _$LoginInfoSerializer();
}

class _$LoginInfoSerializer implements StructuredSerializer<LoginInfo> {
    @override
    final Iterable<Type> types = const [LoginInfo, _$LoginInfo];

    @override
    final String wireName = r'LoginInfo';

    @override
    Iterable<Object?> serialize(Serializers serializers, LoginInfo object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.username != null) {
            result
                ..add(r'username')
                ..add(serializers.serialize(object.username,
                    specifiedType: const FullType.nullable(String)));
        }
        if (object.password != null) {
            result
                ..add(r'password')
                ..add(serializers.serialize(object.password,
                    specifiedType: const FullType.nullable(String)));
        }
        if (object.passwordHash != null) {
            result
                ..add(r'passwordHash')
                ..add(serializers.serialize(object.passwordHash,
                    specifiedType: const FullType.nullable(String)));
        }
        return result;
    }

    @override
    LoginInfo deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = LoginInfoBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'username':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType.nullable(String)) as String?;
                    if (valueDes == null) continue;
                    result.username = valueDes;
                    break;
                case r'password':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType.nullable(String)) as String?;
                    if (valueDes == null) continue;
                    result.password = valueDes;
                    break;
                case r'passwordHash':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType.nullable(String)) as String?;
                    if (valueDes == null) continue;
                    result.passwordHash = valueDes;
                    break;
            }
        }
        return result.build();
    }
}

