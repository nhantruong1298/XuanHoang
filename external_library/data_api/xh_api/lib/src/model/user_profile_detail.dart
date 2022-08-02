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
    @BuiltValueField(wireName: r'email')
    String? get email;

    @BuiltValueField(wireName: r'lastName')
    String? get lastName;

    @BuiltValueField(wireName: r'firstName')
    String? get firstName;

    @BuiltValueField(wireName: r'fullName')
    String? get fullName;

    @BuiltValueField(wireName: r'idRepLanguage')
    String? get idRepLanguage;

    @BuiltValueField(wireName: r'password')
    String? get password;

    @BuiltValueField(wireName: r'phoneNr')
    String? get phoneNr;

    @BuiltValueField(wireName: r'mobileNr')
    String? get mobileNr;

    @BuiltValueField(wireName: r'dateOfBirth')
    String? get dateOfBirth;

    @BuiltValueField(wireName: r'idLoginRoles')
    String? get idLoginRoles;

    @BuiltValueField(wireName: r'initials')
    String? get initials;

    @BuiltValueField(wireName: r'encrypted')
    String? get encrypted;

    @BuiltValueField(wireName: r'isBlocked')
    bool? get isBlocked;

    @BuiltValueField(wireName: r'isLoginActived')
    bool? get isLoginActived;

    @BuiltValueField(wireName: r'idPerson')
    String? get idPerson;

    @BuiltValueField(wireName: r'idAppUser')
    String? get idAppUser;

    @BuiltValueField(wireName: r'currentDateTime')
    String? get currentDateTime;

    @BuiltValueField(wireName: r'isDeleted')
    bool? get isDeleted;

    @BuiltValueField(wireName: r'idApplicationOwner')
    String? get idApplicationOwner;

    @BuiltValueField(wireName: r'company')
    String? get company;

    @BuiltValueField(wireName: r'idLogin')
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
                ..add(r'email')
                ..add(serializers.serialize(object.email,
                    specifiedType: const FullType.nullable(String)));
        }
        if (object.lastName != null) {
            result
                ..add(r'lastName')
                ..add(serializers.serialize(object.lastName,
                    specifiedType: const FullType.nullable(String)));
        }
        if (object.firstName != null) {
            result
                ..add(r'firstName')
                ..add(serializers.serialize(object.firstName,
                    specifiedType: const FullType.nullable(String)));
        }
        if (object.fullName != null) {
            result
                ..add(r'fullName')
                ..add(serializers.serialize(object.fullName,
                    specifiedType: const FullType.nullable(String)));
        }
        if (object.idRepLanguage != null) {
            result
                ..add(r'idRepLanguage')
                ..add(serializers.serialize(object.idRepLanguage,
                    specifiedType: const FullType.nullable(String)));
        }
        if (object.password != null) {
            result
                ..add(r'password')
                ..add(serializers.serialize(object.password,
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
        if (object.dateOfBirth != null) {
            result
                ..add(r'dateOfBirth')
                ..add(serializers.serialize(object.dateOfBirth,
                    specifiedType: const FullType.nullable(String)));
        }
        if (object.idLoginRoles != null) {
            result
                ..add(r'idLoginRoles')
                ..add(serializers.serialize(object.idLoginRoles,
                    specifiedType: const FullType.nullable(String)));
        }
        if (object.initials != null) {
            result
                ..add(r'initials')
                ..add(serializers.serialize(object.initials,
                    specifiedType: const FullType.nullable(String)));
        }
        if (object.encrypted != null) {
            result
                ..add(r'encrypted')
                ..add(serializers.serialize(object.encrypted,
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
        if (object.idPerson != null) {
            result
                ..add(r'idPerson')
                ..add(serializers.serialize(object.idPerson,
                    specifiedType: const FullType.nullable(String)));
        }
        if (object.idAppUser != null) {
            result
                ..add(r'idAppUser')
                ..add(serializers.serialize(object.idAppUser,
                    specifiedType: const FullType.nullable(String)));
        }
        if (object.currentDateTime != null) {
            result
                ..add(r'currentDateTime')
                ..add(serializers.serialize(object.currentDateTime,
                    specifiedType: const FullType.nullable(String)));
        }
        if (object.isDeleted != null) {
            result
                ..add(r'isDeleted')
                ..add(serializers.serialize(object.isDeleted,
                    specifiedType: const FullType.nullable(bool)));
        }
        if (object.idApplicationOwner != null) {
            result
                ..add(r'idApplicationOwner')
                ..add(serializers.serialize(object.idApplicationOwner,
                    specifiedType: const FullType.nullable(String)));
        }
        if (object.company != null) {
            result
                ..add(r'company')
                ..add(serializers.serialize(object.company,
                    specifiedType: const FullType.nullable(String)));
        }
        if (object.idLogin != null) {
            result
                ..add(r'idLogin')
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
                case r'email':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType.nullable(String)) as String?;
                    if (valueDes == null) continue;
                    result.email = valueDes;
                    break;
                case r'lastName':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType.nullable(String)) as String?;
                    if (valueDes == null) continue;
                    result.lastName = valueDes;
                    break;
                case r'firstName':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType.nullable(String)) as String?;
                    if (valueDes == null) continue;
                    result.firstName = valueDes;
                    break;
                case r'fullName':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType.nullable(String)) as String?;
                    if (valueDes == null) continue;
                    result.fullName = valueDes;
                    break;
                case r'idRepLanguage':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType.nullable(String)) as String?;
                    if (valueDes == null) continue;
                    result.idRepLanguage = valueDes;
                    break;
                case r'password':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType.nullable(String)) as String?;
                    if (valueDes == null) continue;
                    result.password = valueDes;
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
                case r'dateOfBirth':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType.nullable(String)) as String?;
                    if (valueDes == null) continue;
                    result.dateOfBirth = valueDes;
                    break;
                case r'idLoginRoles':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType.nullable(String)) as String?;
                    if (valueDes == null) continue;
                    result.idLoginRoles = valueDes;
                    break;
                case r'initials':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType.nullable(String)) as String?;
                    if (valueDes == null) continue;
                    result.initials = valueDes;
                    break;
                case r'encrypted':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType.nullable(String)) as String?;
                    if (valueDes == null) continue;
                    result.encrypted = valueDes;
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
                case r'idPerson':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType.nullable(String)) as String?;
                    if (valueDes == null) continue;
                    result.idPerson = valueDes;
                    break;
                case r'idAppUser':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType.nullable(String)) as String?;
                    if (valueDes == null) continue;
                    result.idAppUser = valueDes;
                    break;
                case r'currentDateTime':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType.nullable(String)) as String?;
                    if (valueDes == null) continue;
                    result.currentDateTime = valueDes;
                    break;
                case r'isDeleted':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType.nullable(bool)) as bool?;
                    if (valueDes == null) continue;
                    result.isDeleted = valueDes;
                    break;
                case r'idApplicationOwner':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType.nullable(String)) as String?;
                    if (valueDes == null) continue;
                    result.idApplicationOwner = valueDes;
                    break;
                case r'company':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType.nullable(String)) as String?;
                    if (valueDes == null) continue;
                    result.company = valueDes;
                    break;
                case r'idLogin':
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

