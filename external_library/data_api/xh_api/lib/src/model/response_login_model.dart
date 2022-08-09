//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:xh_api/src/model/user_from_service.dart';
import 'package:xh_api/src/model/o_auth_tokens.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'response_login_model.g.dart';

/// ResponseLoginModel
///
/// Properties:
/// * [profile] 
/// * [token] 
abstract class ResponseLoginModel implements Built<ResponseLoginModel, ResponseLoginModelBuilder> {
    @BuiltValueField(wireName: r'Profile')
    UserFromService? get profile;

    @BuiltValueField(wireName: r'Token')
    OAuthTokens? get token;

    ResponseLoginModel._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(ResponseLoginModelBuilder b) => b;

    factory ResponseLoginModel([void updates(ResponseLoginModelBuilder b)]) = _$ResponseLoginModel;

    @BuiltValueSerializer(custom: true)
    static Serializer<ResponseLoginModel> get serializer => _$ResponseLoginModelSerializer();
}

class _$ResponseLoginModelSerializer implements StructuredSerializer<ResponseLoginModel> {
    @override
    final Iterable<Type> types = const [ResponseLoginModel, _$ResponseLoginModel];

    @override
    final String wireName = r'ResponseLoginModel';

    @override
    Iterable<Object?> serialize(Serializers serializers, ResponseLoginModel object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.profile != null) {
            result
                ..add(r'Profile')
                ..add(serializers.serialize(object.profile,
                    specifiedType: const FullType(UserFromService)));
        }
        if (object.token != null) {
            result
                ..add(r'Token')
                ..add(serializers.serialize(object.token,
                    specifiedType: const FullType(OAuthTokens)));
        }
        return result;
    }

    @override
    ResponseLoginModel deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = ResponseLoginModelBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'Profile':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(UserFromService)) as UserFromService;
                    result.profile.replace(valueDes);
                    break;
                case r'Token':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(OAuthTokens)) as OAuthTokens;
                    result.token.replace(valueDes);
                    break;
            }
        }
        return result.build();
    }
}

