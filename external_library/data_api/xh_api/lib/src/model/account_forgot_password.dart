//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'account_forgot_password.g.dart';

/// AccountForgotPassword
///
/// Properties:
/// * [email] 
/// * [idLogin] 
abstract class AccountForgotPassword implements Built<AccountForgotPassword, AccountForgotPasswordBuilder> {
    @BuiltValueField(wireName: r'Email')
    String get email;

    @BuiltValueField(wireName: r'IdLogin')
    String? get idLogin;

    AccountForgotPassword._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(AccountForgotPasswordBuilder b) => b;

    factory AccountForgotPassword([void updates(AccountForgotPasswordBuilder b)]) = _$AccountForgotPassword;

    @BuiltValueSerializer(custom: true)
    static Serializer<AccountForgotPassword> get serializer => _$AccountForgotPasswordSerializer();
}

class _$AccountForgotPasswordSerializer implements StructuredSerializer<AccountForgotPassword> {
    @override
    final Iterable<Type> types = const [AccountForgotPassword, _$AccountForgotPassword];

    @override
    final String wireName = r'AccountForgotPassword';

    @override
    Iterable<Object?> serialize(Serializers serializers, AccountForgotPassword object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        result
            ..add(r'Email')
            ..add(serializers.serialize(object.email,
                specifiedType: const FullType(String)));
        if (object.idLogin != null) {
            result
                ..add(r'IdLogin')
                ..add(serializers.serialize(object.idLogin,
                    specifiedType: const FullType.nullable(String)));
        }
        return result;
    }

    @override
    AccountForgotPassword deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = AccountForgotPasswordBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'Email':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.email = valueDes;
                    break;
                case r'IdLogin':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType.nullable(String)) as String?;
                    if (valueDes == null) continue;
                    result.idLogin = valueDes;
                    break;
            }
        }
        return result.build();
    }
}

