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
    @BuiltValueField(wireName: r'Username')
    String? get username;

    @BuiltValueField(wireName: r'FirstName')
    String? get firstName;

    @BuiltValueField(wireName: r'LastName')
    String? get lastName;

    @BuiltValueField(wireName: r'FullName')
    String? get fullName;

    @BuiltValueField(wireName: r'Email')
    String? get email;

    @BuiltValueField(wireName: r'Password')
    String? get password;

    @BuiltValueField(wireName: r'NewPassword')
    String? get newPassword;

    @BuiltValueField(wireName: r'RetypePassword')
    String? get retypePassword;

    @BuiltValueField(wireName: r'IdLogin')
    String? get idLogin;

    @BuiltValueField(wireName: r'PhoneNr')
    String? get phoneNr;

    @BuiltValueField(wireName: r'MobileNr')
    String? get mobileNr;

    @BuiltValueField(wireName: r'RoleName')
    String? get roleName;

    @BuiltValueField(wireName: r'AccessTokenExpire')
    int? get accessTokenExpire;

    @BuiltValueField(wireName: r'LoginPicture')
    String? get loginPicture;

    @BuiltValueField(wireName: r'IsBlocked')
    bool? get isBlocked;

    @BuiltValueField(wireName: r'IsLoginActived')
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
                ..add(r'Username')
                ..add(serializers.serialize(object.username,
                    specifiedType: const FullType.nullable(String)));
        }
        if (object.firstName != null) {
            result
                ..add(r'FirstName')
                ..add(serializers.serialize(object.firstName,
                    specifiedType: const FullType.nullable(String)));
        }
        if (object.lastName != null) {
            result
                ..add(r'LastName')
                ..add(serializers.serialize(object.lastName,
                    specifiedType: const FullType.nullable(String)));
        }
        if (object.fullName != null) {
            result
                ..add(r'FullName')
                ..add(serializers.serialize(object.fullName,
                    specifiedType: const FullType.nullable(String)));
        }
        if (object.email != null) {
            result
                ..add(r'Email')
                ..add(serializers.serialize(object.email,
                    specifiedType: const FullType.nullable(String)));
        }
        if (object.password != null) {
            result
                ..add(r'Password')
                ..add(serializers.serialize(object.password,
                    specifiedType: const FullType.nullable(String)));
        }
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
        if (object.idLogin != null) {
            result
                ..add(r'IdLogin')
                ..add(serializers.serialize(object.idLogin,
                    specifiedType: const FullType.nullable(String)));
        }
        if (object.phoneNr != null) {
            result
                ..add(r'PhoneNr')
                ..add(serializers.serialize(object.phoneNr,
                    specifiedType: const FullType.nullable(String)));
        }
        if (object.mobileNr != null) {
            result
                ..add(r'MobileNr')
                ..add(serializers.serialize(object.mobileNr,
                    specifiedType: const FullType.nullable(String)));
        }
        if (object.roleName != null) {
            result
                ..add(r'RoleName')
                ..add(serializers.serialize(object.roleName,
                    specifiedType: const FullType.nullable(String)));
        }
        if (object.accessTokenExpire != null) {
            result
                ..add(r'AccessTokenExpire')
                ..add(serializers.serialize(object.accessTokenExpire,
                    specifiedType: const FullType(int)));
        }
        if (object.loginPicture != null) {
            result
                ..add(r'LoginPicture')
                ..add(serializers.serialize(object.loginPicture,
                    specifiedType: const FullType.nullable(String)));
        }
        if (object.isBlocked != null) {
            result
                ..add(r'IsBlocked')
                ..add(serializers.serialize(object.isBlocked,
                    specifiedType: const FullType.nullable(bool)));
        }
        if (object.isLoginActived != null) {
            result
                ..add(r'IsLoginActived')
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
                case r'Username':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType.nullable(String)) as String?;
                    if (valueDes == null) continue;
                    result.username = valueDes;
                    break;
                case r'FirstName':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType.nullable(String)) as String?;
                    if (valueDes == null) continue;
                    result.firstName = valueDes;
                    break;
                case r'LastName':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType.nullable(String)) as String?;
                    if (valueDes == null) continue;
                    result.lastName = valueDes;
                    break;
                case r'FullName':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType.nullable(String)) as String?;
                    if (valueDes == null) continue;
                    result.fullName = valueDes;
                    break;
                case r'Email':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType.nullable(String)) as String?;
                    if (valueDes == null) continue;
                    result.email = valueDes;
                    break;
                case r'Password':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType.nullable(String)) as String?;
                    if (valueDes == null) continue;
                    result.password = valueDes;
                    break;
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
                case r'IdLogin':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType.nullable(String)) as String?;
                    if (valueDes == null) continue;
                    result.idLogin = valueDes;
                    break;
                case r'PhoneNr':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType.nullable(String)) as String?;
                    if (valueDes == null) continue;
                    result.phoneNr = valueDes;
                    break;
                case r'MobileNr':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType.nullable(String)) as String?;
                    if (valueDes == null) continue;
                    result.mobileNr = valueDes;
                    break;
                case r'RoleName':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType.nullable(String)) as String?;
                    if (valueDes == null) continue;
                    result.roleName = valueDes;
                    break;
                case r'AccessTokenExpire':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    result.accessTokenExpire = valueDes;
                    break;
                case r'LoginPicture':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType.nullable(String)) as String?;
                    if (valueDes == null) continue;
                    result.loginPicture = valueDes;
                    break;
                case r'IsBlocked':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType.nullable(bool)) as bool?;
                    if (valueDes == null) continue;
                    result.isBlocked = valueDes;
                    break;
                case r'IsLoginActived':
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

