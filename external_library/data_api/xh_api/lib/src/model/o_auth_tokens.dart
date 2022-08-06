//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'o_auth_tokens.g.dart';

/// OAuthTokens
///
/// Properties:
/// * [accessToken] 
/// * [refreshToken] 
/// * [tokenType] 
/// * [expiresIn] 
/// * [result] 
/// * [message] 
/// * [messageType] 
abstract class OAuthTokens implements Built<OAuthTokens, OAuthTokensBuilder> {
    @BuiltValueField(wireName: r'access_token')
    String? get accessToken;

    @BuiltValueField(wireName: r'refresh_token')
    String? get refreshToken;

    @BuiltValueField(wireName: r'token_type')
    String? get tokenType;

    @BuiltValueField(wireName: r'expires_in')
    String? get expiresIn;

    @BuiltValueField(wireName: r'result')
    String? get result;

    @BuiltValueField(wireName: r'message')
    String? get message;

    @BuiltValueField(wireName: r'message_type')
    String? get messageType;

    OAuthTokens._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(OAuthTokensBuilder b) => b;

    factory OAuthTokens([void updates(OAuthTokensBuilder b)]) = _$OAuthTokens;

    @BuiltValueSerializer(custom: true)
    static Serializer<OAuthTokens> get serializer => _$OAuthTokensSerializer();
}

class _$OAuthTokensSerializer implements StructuredSerializer<OAuthTokens> {
    @override
    final Iterable<Type> types = const [OAuthTokens, _$OAuthTokens];

    @override
    final String wireName = r'OAuthTokens';

    @override
    Iterable<Object?> serialize(Serializers serializers, OAuthTokens object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.accessToken != null) {
            result
                ..add(r'access_token')
                ..add(serializers.serialize(object.accessToken,
                    specifiedType: const FullType.nullable(String)));
        }
        if (object.refreshToken != null) {
            result
                ..add(r'refresh_token')
                ..add(serializers.serialize(object.refreshToken,
                    specifiedType: const FullType.nullable(String)));
        }
        if (object.tokenType != null) {
            result
                ..add(r'token_type')
                ..add(serializers.serialize(object.tokenType,
                    specifiedType: const FullType.nullable(String)));
        }
        if (object.expiresIn != null) {
            result
                ..add(r'expires_in')
                ..add(serializers.serialize(object.expiresIn,
                    specifiedType: const FullType.nullable(String)));
        }
        if (object.result != null) {
            result
                ..add(r'result')
                ..add(serializers.serialize(object.result,
                    specifiedType: const FullType.nullable(String)));
        }
        if (object.message != null) {
            result
                ..add(r'message')
                ..add(serializers.serialize(object.message,
                    specifiedType: const FullType.nullable(String)));
        }
        if (object.messageType != null) {
            result
                ..add(r'message_type')
                ..add(serializers.serialize(object.messageType,
                    specifiedType: const FullType.nullable(String)));
        }
        return result;
    }

    @override
    OAuthTokens deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = OAuthTokensBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'access_token':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType.nullable(String)) as String?;
                    if (valueDes == null) continue;
                    result.accessToken = valueDes;
                    break;
                case r'refresh_token':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType.nullable(String)) as String?;
                    if (valueDes == null) continue;
                    result.refreshToken = valueDes;
                    break;
                case r'token_type':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType.nullable(String)) as String?;
                    if (valueDes == null) continue;
                    result.tokenType = valueDes;
                    break;
                case r'expires_in':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType.nullable(String)) as String?;
                    if (valueDes == null) continue;
                    result.expiresIn = valueDes;
                    break;
                case r'result':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType.nullable(String)) as String?;
                    if (valueDes == null) continue;
                    result.result = valueDes;
                    break;
                case r'message':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType.nullable(String)) as String?;
                    if (valueDes == null) continue;
                    result.message = valueDes;
                    break;
                case r'message_type':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType.nullable(String)) as String?;
                    if (valueDes == null) continue;
                    result.messageType = valueDes;
                    break;
            }
        }
        return result.build();
    }
}

