//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'user_info.g.dart';

/// UserInfo
///
/// Properties:
/// * [idLogin] 
/// * [idApplicationOwner] 
/// * [email] 
/// * [emailSent] 
/// * [company] 
/// * [fullName] 
/// * [initials] 
/// * [active] 
/// * [isLoginActived] 
/// * [currentDateTime] 
/// * [setActiveButton] 
/// * [idPerson] 
/// * [encrypted] 
abstract class UserInfo implements Built<UserInfo, UserInfoBuilder> {
    @BuiltValueField(wireName: r'IdLogin')
    String? get idLogin;

    @BuiltValueField(wireName: r'IdApplicationOwner')
    String? get idApplicationOwner;

    @BuiltValueField(wireName: r'Email')
    String? get email;

    @BuiltValueField(wireName: r'EmailSent')
    DateTime? get emailSent;

    @BuiltValueField(wireName: r'Company')
    String? get company;

    @BuiltValueField(wireName: r'FullName')
    String? get fullName;

    @BuiltValueField(wireName: r'Initials')
    String? get initials;

    @BuiltValueField(wireName: r'Active')
    bool? get active;

    @BuiltValueField(wireName: r'IsLoginActived')
    bool? get isLoginActived;

    @BuiltValueField(wireName: r'CurrentDateTime')
    String? get currentDateTime;

    @BuiltValueField(wireName: r'SetActiveButton')
    bool? get setActiveButton;

    @BuiltValueField(wireName: r'IdPerson')
    String? get idPerson;

    @BuiltValueField(wireName: r'Encrypted')
    String? get encrypted;

    UserInfo._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(UserInfoBuilder b) => b;

    factory UserInfo([void updates(UserInfoBuilder b)]) = _$UserInfo;

    @BuiltValueSerializer(custom: true)
    static Serializer<UserInfo> get serializer => _$UserInfoSerializer();
}

class _$UserInfoSerializer implements StructuredSerializer<UserInfo> {
    @override
    final Iterable<Type> types = const [UserInfo, _$UserInfo];

    @override
    final String wireName = r'UserInfo';

    @override
    Iterable<Object?> serialize(Serializers serializers, UserInfo object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.idLogin != null) {
            result
                ..add(r'IdLogin')
                ..add(serializers.serialize(object.idLogin,
                    specifiedType: const FullType.nullable(String)));
        }
        if (object.idApplicationOwner != null) {
            result
                ..add(r'IdApplicationOwner')
                ..add(serializers.serialize(object.idApplicationOwner,
                    specifiedType: const FullType.nullable(String)));
        }
        if (object.email != null) {
            result
                ..add(r'Email')
                ..add(serializers.serialize(object.email,
                    specifiedType: const FullType.nullable(String)));
        }
        if (object.emailSent != null) {
            result
                ..add(r'EmailSent')
                ..add(serializers.serialize(object.emailSent,
                    specifiedType: const FullType(DateTime)));
        }
        if (object.company != null) {
            result
                ..add(r'Company')
                ..add(serializers.serialize(object.company,
                    specifiedType: const FullType.nullable(String)));
        }
        if (object.fullName != null) {
            result
                ..add(r'FullName')
                ..add(serializers.serialize(object.fullName,
                    specifiedType: const FullType.nullable(String)));
        }
        if (object.initials != null) {
            result
                ..add(r'Initials')
                ..add(serializers.serialize(object.initials,
                    specifiedType: const FullType.nullable(String)));
        }
        if (object.active != null) {
            result
                ..add(r'Active')
                ..add(serializers.serialize(object.active,
                    specifiedType: const FullType.nullable(bool)));
        }
        if (object.isLoginActived != null) {
            result
                ..add(r'IsLoginActived')
                ..add(serializers.serialize(object.isLoginActived,
                    specifiedType: const FullType(bool)));
        }
        if (object.currentDateTime != null) {
            result
                ..add(r'CurrentDateTime')
                ..add(serializers.serialize(object.currentDateTime,
                    specifiedType: const FullType.nullable(String)));
        }
        if (object.setActiveButton != null) {
            result
                ..add(r'SetActiveButton')
                ..add(serializers.serialize(object.setActiveButton,
                    specifiedType: const FullType(bool)));
        }
        if (object.idPerson != null) {
            result
                ..add(r'IdPerson')
                ..add(serializers.serialize(object.idPerson,
                    specifiedType: const FullType.nullable(String)));
        }
        if (object.encrypted != null) {
            result
                ..add(r'Encrypted')
                ..add(serializers.serialize(object.encrypted,
                    specifiedType: const FullType.nullable(String)));
        }
        return result;
    }

    @override
    UserInfo deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = UserInfoBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'IdLogin':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType.nullable(String)) as String?;
                    if (valueDes == null) continue;
                    result.idLogin = valueDes;
                    break;
                case r'IdApplicationOwner':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType.nullable(String)) as String?;
                    if (valueDes == null) continue;
                    result.idApplicationOwner = valueDes;
                    break;
                case r'Email':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType.nullable(String)) as String?;
                    if (valueDes == null) continue;
                    result.email = valueDes;
                    break;
                case r'EmailSent':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(DateTime)) as DateTime;
                    result.emailSent = valueDes;
                    break;
                case r'Company':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType.nullable(String)) as String?;
                    if (valueDes == null) continue;
                    result.company = valueDes;
                    break;
                case r'FullName':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType.nullable(String)) as String?;
                    if (valueDes == null) continue;
                    result.fullName = valueDes;
                    break;
                case r'Initials':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType.nullable(String)) as String?;
                    if (valueDes == null) continue;
                    result.initials = valueDes;
                    break;
                case r'Active':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType.nullable(bool)) as bool?;
                    if (valueDes == null) continue;
                    result.active = valueDes;
                    break;
                case r'IsLoginActived':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(bool)) as bool;
                    result.isLoginActived = valueDes;
                    break;
                case r'CurrentDateTime':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType.nullable(String)) as String?;
                    if (valueDes == null) continue;
                    result.currentDateTime = valueDes;
                    break;
                case r'SetActiveButton':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(bool)) as bool;
                    result.setActiveButton = valueDes;
                    break;
                case r'IdPerson':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType.nullable(String)) as String?;
                    if (valueDes == null) continue;
                    result.idPerson = valueDes;
                    break;
                case r'Encrypted':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType.nullable(String)) as String?;
                    if (valueDes == null) continue;
                    result.encrypted = valueDes;
                    break;
            }
        }
        return result.build();
    }
}

