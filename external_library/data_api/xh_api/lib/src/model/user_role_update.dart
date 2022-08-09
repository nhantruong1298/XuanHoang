//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'user_role_update.g.dart';

/// UserRoleUpdate
///
/// Properties:
/// * [idLoginRolesLoginGw] 
/// * [idLoginRoles] 
/// * [isBlocked] 
/// * [isDefault] 
/// * [idLogin] 
abstract class UserRoleUpdate implements Built<UserRoleUpdate, UserRoleUpdateBuilder> {
    @BuiltValueField(wireName: r'IdLoginRolesLoginGw')
    String? get idLoginRolesLoginGw;

    @BuiltValueField(wireName: r'IdLoginRoles')
    String? get idLoginRoles;

    @BuiltValueField(wireName: r'IsBlocked')
    bool? get isBlocked;

    @BuiltValueField(wireName: r'IsDefault')
    bool? get isDefault;

    @BuiltValueField(wireName: r'IdLogin')
    int? get idLogin;

    UserRoleUpdate._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(UserRoleUpdateBuilder b) => b;

    factory UserRoleUpdate([void updates(UserRoleUpdateBuilder b)]) = _$UserRoleUpdate;

    @BuiltValueSerializer(custom: true)
    static Serializer<UserRoleUpdate> get serializer => _$UserRoleUpdateSerializer();
}

class _$UserRoleUpdateSerializer implements StructuredSerializer<UserRoleUpdate> {
    @override
    final Iterable<Type> types = const [UserRoleUpdate, _$UserRoleUpdate];

    @override
    final String wireName = r'UserRoleUpdate';

    @override
    Iterable<Object?> serialize(Serializers serializers, UserRoleUpdate object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.idLoginRolesLoginGw != null) {
            result
                ..add(r'IdLoginRolesLoginGw')
                ..add(serializers.serialize(object.idLoginRolesLoginGw,
                    specifiedType: const FullType.nullable(String)));
        }
        if (object.idLoginRoles != null) {
            result
                ..add(r'IdLoginRoles')
                ..add(serializers.serialize(object.idLoginRoles,
                    specifiedType: const FullType.nullable(String)));
        }
        if (object.isBlocked != null) {
            result
                ..add(r'IsBlocked')
                ..add(serializers.serialize(object.isBlocked,
                    specifiedType: const FullType.nullable(bool)));
        }
        if (object.isDefault != null) {
            result
                ..add(r'IsDefault')
                ..add(serializers.serialize(object.isDefault,
                    specifiedType: const FullType.nullable(bool)));
        }
        if (object.idLogin != null) {
            result
                ..add(r'IdLogin')
                ..add(serializers.serialize(object.idLogin,
                    specifiedType: const FullType.nullable(int)));
        }
        return result;
    }

    @override
    UserRoleUpdate deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = UserRoleUpdateBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'IdLoginRolesLoginGw':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType.nullable(String)) as String?;
                    if (valueDes == null) continue;
                    result.idLoginRolesLoginGw = valueDes;
                    break;
                case r'IdLoginRoles':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType.nullable(String)) as String?;
                    if (valueDes == null) continue;
                    result.idLoginRoles = valueDes;
                    break;
                case r'IsBlocked':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType.nullable(bool)) as bool?;
                    if (valueDes == null) continue;
                    result.isBlocked = valueDes;
                    break;
                case r'IsDefault':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType.nullable(bool)) as bool?;
                    if (valueDes == null) continue;
                    result.isDefault = valueDes;
                    break;
                case r'IdLogin':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType.nullable(int)) as int?;
                    if (valueDes == null) continue;
                    result.idLogin = valueDes;
                    break;
            }
        }
        return result.build();
    }
}

