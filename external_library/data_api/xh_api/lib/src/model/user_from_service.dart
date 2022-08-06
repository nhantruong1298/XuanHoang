//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'user_from_service.g.dart';

/// UserFromService
///
/// Properties:
/// * [username] 
/// * [firstName] 
/// * [lastName] 
/// * [fullName] 
/// * [email] 
/// * [password] 
/// * [newPassword] 
/// * [retypePassword] 
/// * [idLogin] 
/// * [phoneNr] 
/// * [mobileNr] 
/// * [roleName] 
/// * [accessTokenExpire] 
/// * [loginPicture] 
/// * [isBlocked] 
/// * [isLoginActived] 
abstract class UserFromService implements Built<UserFromService, UserFromServiceBuilder> {
    @BuiltValueField(wireName: r'username')
    String? get username;

    @BuiltValueField(wireName: r'firstName')
    String? get firstName;

    @BuiltValueField(wireName: r'lastName')
    String? get lastName;

    @BuiltValueField(wireName: r'fullName')
    String? get fullName;

    @BuiltValueField(wireName: r'email')
    String? get email;

    @BuiltValueField(wireName: r'password')
    String? get password;

    @BuiltValueField(wireName: r'newPassword')
    String? get newPassword;

    @BuiltValueField(wireName: r'retypePassword')
    String? get retypePassword;

    @BuiltValueField(wireName: r'idLogin')
    String? get idLogin;

    @BuiltValueField(wireName: r'phoneNr')
    String? get phoneNr;

    @BuiltValueField(wireName: r'mobileNr')
    String? get mobileNr;

    @BuiltValueField(wireName: r'roleName')
    String? get roleName;

    @BuiltValueField(wireName: r'accessTokenExpire')
    int? get accessTokenExpire;

    @BuiltValueField(wireName: r'loginPicture')
    String? get loginPicture;

    @BuiltValueField(wireName: r'isBlocked')
    bool? get isBlocked;

    @BuiltValueField(wireName: r'isLoginActived')
    bool? get isLoginActived;

    UserFromService._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(UserFromServiceBuilder b) => b;

    factory UserFromService([void updates(UserFromServiceBuilder b)]) = _$UserFromService;

    @BuiltValueSerializer(custom: true)
    static Serializer<UserFromService> get serializer => _$UserFromServiceSerializer();
}

class _$UserFromServiceSerializer implements StructuredSerializer<UserFromService> {
    @override
    final Iterable<Type> types = const [UserFromService, _$UserFromService];

    @override
    final String wireName = r'UserFromService';

    @override
    Iterable<Object?> serialize(Serializers serializers, UserFromService object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.username != null) {
            result
                ..add(r'username')
                ..add(serializers.serialize(object.username,
                    specifiedType: const FullType.nullable(String)));
        }
        if (object.firstName != null) {
            result
                ..add(r'firstName')
                ..add(serializers.serialize(object.firstName,
                    specifiedType: const FullType.nullable(String)));
        }
        if (object.lastName != null) {
            result
                ..add(r'lastName')
                ..add(serializers.serialize(object.lastName,
                    specifiedType: const FullType.nullable(String)));
        }
        if (object.fullName != null) {
            result
                ..add(r'fullName')
                ..add(serializers.serialize(object.fullName,
                    specifiedType: const FullType.nullable(String)));
        }
        if (object.email != null) {
            result
                ..add(r'email')
                ..add(serializers.serialize(object.email,
                    specifiedType: const FullType.nullable(String)));
        }
        if (object.password != null) {
            result
                ..add(r'password')
                ..add(serializers.serialize(object.password,
                    specifiedType: const FullType.nullable(String)));
        }
        if (object.newPassword != null) {
            result
                ..add(r'newPassword')
                ..add(serializers.serialize(object.newPassword,
                    specifiedType: const FullType.nullable(String)));
        }
        if (object.retypePassword != null) {
            result
                ..add(r'retypePassword')
                ..add(serializers.serialize(object.retypePassword,
                    specifiedType: const FullType.nullable(String)));
        }
        if (object.idLogin != null) {
            result
                ..add(r'idLogin')
                ..add(serializers.serialize(object.idLogin,
                    specifiedType: const FullType.nullable(String)));
        }
        if (object.phoneNr != null) {
            result
                ..add(r'phoneNr')
                ..add(serializers.serialize(object.phoneNr,
                    specifiedType: const FullType.nullable(String)));
        }
        if (object.mobileNr != null) {
            result
                ..add(r'mobileNr')
                ..add(serializers.serialize(object.mobileNr,
                    specifiedType: const FullType.nullable(String)));
        }
        if (object.roleName != null) {
            result
                ..add(r'roleName')
                ..add(serializers.serialize(object.roleName,
                    specifiedType: const FullType.nullable(String)));
        }
        if (object.accessTokenExpire != null) {
            result
                ..add(r'accessTokenExpire')
                ..add(serializers.serialize(object.accessTokenExpire,
                    specifiedType: const FullType(int)));
        }
        if (object.loginPicture != null) {
            result
                ..add(r'loginPicture')
                ..add(serializers.serialize(object.loginPicture,
                    specifiedType: const FullType.nullable(String)));
        }
        if (object.isBlocked != null) {
            result
                ..add(r'isBlocked')
                ..add(serializers.serialize(object.isBlocked,
                    specifiedType: const FullType.nullable(bool)));
        }
        if (object.isLoginActived != null) {
            result
                ..add(r'isLoginActived')
                ..add(serializers.serialize(object.isLoginActived,
                    specifiedType: const FullType.nullable(bool)));
        }
        return result;
    }

    @override
    UserFromService deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = UserFromServiceBuilder();

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
                case r'firstName':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType.nullable(String)) as String?;
                    if (valueDes == null) continue;
                    result.firstName = valueDes;
                    break;
                case r'lastName':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType.nullable(String)) as String?;
                    if (valueDes == null) continue;
                    result.lastName = valueDes;
                    break;
                case r'fullName':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType.nullable(String)) as String?;
                    if (valueDes == null) continue;
                    result.fullName = valueDes;
                    break;
                case r'email':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType.nullable(String)) as String?;
                    if (valueDes == null) continue;
                    result.email = valueDes;
                    break;
                case r'password':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType.nullable(String)) as String?;
                    if (valueDes == null) continue;
                    result.password = valueDes;
                    break;
                case r'newPassword':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType.nullable(String)) as String?;
                    if (valueDes == null) continue;
                    result.newPassword = valueDes;
                    break;
                case r'retypePassword':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType.nullable(String)) as String?;
                    if (valueDes == null) continue;
                    result.retypePassword = valueDes;
                    break;
                case r'idLogin':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType.nullable(String)) as String?;
                    if (valueDes == null) continue;
                    result.idLogin = valueDes;
                    break;
                case r'phoneNr':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType.nullable(String)) as String?;
                    if (valueDes == null) continue;
                    result.phoneNr = valueDes;
                    break;
                case r'mobileNr':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType.nullable(String)) as String?;
                    if (valueDes == null) continue;
                    result.mobileNr = valueDes;
                    break;
                case r'roleName':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType.nullable(String)) as String?;
                    if (valueDes == null) continue;
                    result.roleName = valueDes;
                    break;
                case r'accessTokenExpire':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    result.accessTokenExpire = valueDes;
                    break;
                case r'loginPicture':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType.nullable(String)) as String?;
                    if (valueDes == null) continue;
                    result.loginPicture = valueDes;
                    break;
                case r'isBlocked':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType.nullable(bool)) as bool?;
                    if (valueDes == null) continue;
                    result.isBlocked = valueDes;
                    break;
                case r'isLoginActived':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType.nullable(bool)) as bool?;
                    if (valueDes == null) continue;
                    result.isLoginActived = valueDes;
                    break;
            }
        }
        return result.build();
    }
}

