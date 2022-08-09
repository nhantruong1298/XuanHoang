//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'user_profile_detail.g.dart';

/// UserProfileDetail
///
/// Properties:
/// * [email] 
/// * [lastName] 
/// * [firstName] 
/// * [fullName] 
/// * [idRepLanguage] 
/// * [password] 
/// * [phoneNr] 
/// * [mobileNr] 
/// * [dateOfBirth] 
/// * [idLoginRoles] 
/// * [initials] 
/// * [encrypted] 
/// * [isBlocked] 
/// * [isLoginActived] 
/// * [idPerson] 
/// * [idAppUser] 
/// * [currentDateTime] 
/// * [isDeleted] 
/// * [idApplicationOwner] 
/// * [company] 
/// * [idLogin] 
abstract class UserProfileDetail implements Built<UserProfileDetail, UserProfileDetailBuilder> {
    @BuiltValueField(wireName: r'Email')
    String? get email;

    @BuiltValueField(wireName: r'LastName')
    String? get lastName;

    @BuiltValueField(wireName: r'FirstName')
    String? get firstName;

    @BuiltValueField(wireName: r'FullName')
    String? get fullName;

    @BuiltValueField(wireName: r'IdRepLanguage')
    String? get idRepLanguage;

    @BuiltValueField(wireName: r'Password')
    String? get password;

    @BuiltValueField(wireName: r'PhoneNr')
    String? get phoneNr;

    @BuiltValueField(wireName: r'MobileNr')
    String? get mobileNr;

    @BuiltValueField(wireName: r'DateOfBirth')
    String? get dateOfBirth;

    @BuiltValueField(wireName: r'IdLoginRoles')
    String? get idLoginRoles;

    @BuiltValueField(wireName: r'Initials')
    String? get initials;

    @BuiltValueField(wireName: r'Encrypted')
    String? get encrypted;

    @BuiltValueField(wireName: r'IsBlocked')
    bool? get isBlocked;

    @BuiltValueField(wireName: r'IsLoginActived')
    bool? get isLoginActived;

    @BuiltValueField(wireName: r'IdPerson')
    String? get idPerson;

    @BuiltValueField(wireName: r'IdAppUser')
    String? get idAppUser;

    @BuiltValueField(wireName: r'CurrentDateTime')
    String? get currentDateTime;

    @BuiltValueField(wireName: r'IsDeleted')
    bool? get isDeleted;

    @BuiltValueField(wireName: r'IdApplicationOwner')
    String? get idApplicationOwner;

    @BuiltValueField(wireName: r'Company')
    String? get company;

    @BuiltValueField(wireName: r'IdLogin')
    String? get idLogin;

    UserProfileDetail._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(UserProfileDetailBuilder b) => b;

    factory UserProfileDetail([void updates(UserProfileDetailBuilder b)]) = _$UserProfileDetail;

    @BuiltValueSerializer(custom: true)
    static Serializer<UserProfileDetail> get serializer => _$UserProfileDetailSerializer();
}

class _$UserProfileDetailSerializer implements StructuredSerializer<UserProfileDetail> {
    @override
    final Iterable<Type> types = const [UserProfileDetail, _$UserProfileDetail];

    @override
    final String wireName = r'UserProfileDetail';

    @override
    Iterable<Object?> serialize(Serializers serializers, UserProfileDetail object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.email != null) {
            result
                ..add(r'Email')
                ..add(serializers.serialize(object.email,
                    specifiedType: const FullType.nullable(String)));
        }
        if (object.lastName != null) {
            result
                ..add(r'LastName')
                ..add(serializers.serialize(object.lastName,
                    specifiedType: const FullType.nullable(String)));
        }
        if (object.firstName != null) {
            result
                ..add(r'FirstName')
                ..add(serializers.serialize(object.firstName,
                    specifiedType: const FullType.nullable(String)));
        }
        if (object.fullName != null) {
            result
                ..add(r'FullName')
                ..add(serializers.serialize(object.fullName,
                    specifiedType: const FullType.nullable(String)));
        }
        if (object.idRepLanguage != null) {
            result
                ..add(r'IdRepLanguage')
                ..add(serializers.serialize(object.idRepLanguage,
                    specifiedType: const FullType.nullable(String)));
        }
        if (object.password != null) {
            result
                ..add(r'Password')
                ..add(serializers.serialize(object.password,
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
        if (object.dateOfBirth != null) {
            result
                ..add(r'DateOfBirth')
                ..add(serializers.serialize(object.dateOfBirth,
                    specifiedType: const FullType.nullable(String)));
        }
        if (object.idLoginRoles != null) {
            result
                ..add(r'IdLoginRoles')
                ..add(serializers.serialize(object.idLoginRoles,
                    specifiedType: const FullType.nullable(String)));
        }
        if (object.initials != null) {
            result
                ..add(r'Initials')
                ..add(serializers.serialize(object.initials,
                    specifiedType: const FullType.nullable(String)));
        }
        if (object.encrypted != null) {
            result
                ..add(r'Encrypted')
                ..add(serializers.serialize(object.encrypted,
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
        if (object.idPerson != null) {
            result
                ..add(r'IdPerson')
                ..add(serializers.serialize(object.idPerson,
                    specifiedType: const FullType.nullable(String)));
        }
        if (object.idAppUser != null) {
            result
                ..add(r'IdAppUser')
                ..add(serializers.serialize(object.idAppUser,
                    specifiedType: const FullType.nullable(String)));
        }
        if (object.currentDateTime != null) {
            result
                ..add(r'CurrentDateTime')
                ..add(serializers.serialize(object.currentDateTime,
                    specifiedType: const FullType.nullable(String)));
        }
        if (object.isDeleted != null) {
            result
                ..add(r'IsDeleted')
                ..add(serializers.serialize(object.isDeleted,
                    specifiedType: const FullType.nullable(bool)));
        }
        if (object.idApplicationOwner != null) {
            result
                ..add(r'IdApplicationOwner')
                ..add(serializers.serialize(object.idApplicationOwner,
                    specifiedType: const FullType.nullable(String)));
        }
        if (object.company != null) {
            result
                ..add(r'Company')
                ..add(serializers.serialize(object.company,
                    specifiedType: const FullType.nullable(String)));
        }
        if (object.idLogin != null) {
            result
                ..add(r'IdLogin')
                ..add(serializers.serialize(object.idLogin,
                    specifiedType: const FullType.nullable(String)));
        }
        return result;
    }

    @override
    UserProfileDetail deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = UserProfileDetailBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'Email':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType.nullable(String)) as String?;
                    if (valueDes == null) continue;
                    result.email = valueDes;
                    break;
                case r'LastName':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType.nullable(String)) as String?;
                    if (valueDes == null) continue;
                    result.lastName = valueDes;
                    break;
                case r'FirstName':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType.nullable(String)) as String?;
                    if (valueDes == null) continue;
                    result.firstName = valueDes;
                    break;
                case r'FullName':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType.nullable(String)) as String?;
                    if (valueDes == null) continue;
                    result.fullName = valueDes;
                    break;
                case r'IdRepLanguage':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType.nullable(String)) as String?;
                    if (valueDes == null) continue;
                    result.idRepLanguage = valueDes;
                    break;
                case r'Password':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType.nullable(String)) as String?;
                    if (valueDes == null) continue;
                    result.password = valueDes;
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
                case r'DateOfBirth':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType.nullable(String)) as String?;
                    if (valueDes == null) continue;
                    result.dateOfBirth = valueDes;
                    break;
                case r'IdLoginRoles':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType.nullable(String)) as String?;
                    if (valueDes == null) continue;
                    result.idLoginRoles = valueDes;
                    break;
                case r'Initials':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType.nullable(String)) as String?;
                    if (valueDes == null) continue;
                    result.initials = valueDes;
                    break;
                case r'Encrypted':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType.nullable(String)) as String?;
                    if (valueDes == null) continue;
                    result.encrypted = valueDes;
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
                case r'IdPerson':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType.nullable(String)) as String?;
                    if (valueDes == null) continue;
                    result.idPerson = valueDes;
                    break;
                case r'IdAppUser':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType.nullable(String)) as String?;
                    if (valueDes == null) continue;
                    result.idAppUser = valueDes;
                    break;
                case r'CurrentDateTime':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType.nullable(String)) as String?;
                    if (valueDes == null) continue;
                    result.currentDateTime = valueDes;
                    break;
                case r'IsDeleted':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType.nullable(bool)) as bool?;
                    if (valueDes == null) continue;
                    result.isDeleted = valueDes;
                    break;
                case r'IdApplicationOwner':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType.nullable(String)) as String?;
                    if (valueDes == null) continue;
                    result.idApplicationOwner = valueDes;
                    break;
                case r'Company':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType.nullable(String)) as String?;
                    if (valueDes == null) continue;
                    result.company = valueDes;
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

