//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'new_account.g.dart';

/// NewAccount
///
/// Properties:
/// * [email] 
/// * [lastName] 
/// * [firstName] 
/// * [userName] 
/// * [fullName] 
/// * [password] 
/// * [phoneNr] 
/// * [mobileNr] 
/// * [idRole] 
/// * [isBlocked] 
abstract class NewAccount implements Built<NewAccount, NewAccountBuilder> {
    @BuiltValueField(wireName: r'Email')
    String? get email;

    @BuiltValueField(wireName: r'LastName')
    String? get lastName;

    @BuiltValueField(wireName: r'FirstName')
    String? get firstName;

    @BuiltValueField(wireName: r'UserName')
    String? get userName;

    @BuiltValueField(wireName: r'FullName')
    String? get fullName;

    @BuiltValueField(wireName: r'Password')
    String? get password;

    @BuiltValueField(wireName: r'PhoneNr')
    String? get phoneNr;

    @BuiltValueField(wireName: r'MobileNr')
    String? get mobileNr;

    @BuiltValueField(wireName: r'IdRole')
    String? get idRole;

    @BuiltValueField(wireName: r'IsBlocked')
    bool? get isBlocked;

    NewAccount._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(NewAccountBuilder b) => b;

    factory NewAccount([void updates(NewAccountBuilder b)]) = _$NewAccount;

    @BuiltValueSerializer(custom: true)
    static Serializer<NewAccount> get serializer => _$NewAccountSerializer();
}

class _$NewAccountSerializer implements StructuredSerializer<NewAccount> {
    @override
    final Iterable<Type> types = const [NewAccount, _$NewAccount];

    @override
    final String wireName = r'NewAccount';

    @override
    Iterable<Object?> serialize(Serializers serializers, NewAccount object,
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
        if (object.userName != null) {
            result
                ..add(r'UserName')
                ..add(serializers.serialize(object.userName,
                    specifiedType: const FullType.nullable(String)));
        }
        if (object.fullName != null) {
            result
                ..add(r'FullName')
                ..add(serializers.serialize(object.fullName,
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
        if (object.idRole != null) {
            result
                ..add(r'IdRole')
                ..add(serializers.serialize(object.idRole,
                    specifiedType: const FullType.nullable(String)));
        }
        if (object.isBlocked != null) {
            result
                ..add(r'IsBlocked')
                ..add(serializers.serialize(object.isBlocked,
                    specifiedType: const FullType(bool)));
        }
        return result;
    }

    @override
    NewAccount deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = NewAccountBuilder();

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
                case r'UserName':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType.nullable(String)) as String?;
                    if (valueDes == null) continue;
                    result.userName = valueDes;
                    break;
                case r'FullName':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType.nullable(String)) as String?;
                    if (valueDes == null) continue;
                    result.fullName = valueDes;
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
                case r'IdRole':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType.nullable(String)) as String?;
                    if (valueDes == null) continue;
                    result.idRole = valueDes;
                    break;
                case r'IsBlocked':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(bool)) as bool;
                    result.isBlocked = valueDes;
                    break;
            }
        }
        return result.build();
    }
}

