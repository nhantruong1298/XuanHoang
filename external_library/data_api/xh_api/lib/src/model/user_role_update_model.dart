//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:xh_api/src/model/user_role_update.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'user_role_update_model.g.dart';

/// UserRoleUpdateModel
///
/// Properties:
/// * [isSetDefaultRole] 
/// * [roles] 
abstract class UserRoleUpdateModel implements Built<UserRoleUpdateModel, UserRoleUpdateModelBuilder> {
    @BuiltValueField(wireName: r'IsSetDefaultRole')
    String? get isSetDefaultRole;

    @BuiltValueField(wireName: r'Roles')
    BuiltList<UserRoleUpdate>? get roles;

    UserRoleUpdateModel._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(UserRoleUpdateModelBuilder b) => b;

    factory UserRoleUpdateModel([void updates(UserRoleUpdateModelBuilder b)]) = _$UserRoleUpdateModel;

    @BuiltValueSerializer(custom: true)
    static Serializer<UserRoleUpdateModel> get serializer => _$UserRoleUpdateModelSerializer();
}

class _$UserRoleUpdateModelSerializer implements StructuredSerializer<UserRoleUpdateModel> {
    @override
    final Iterable<Type> types = const [UserRoleUpdateModel, _$UserRoleUpdateModel];

    @override
    final String wireName = r'UserRoleUpdateModel';

    @override
    Iterable<Object?> serialize(Serializers serializers, UserRoleUpdateModel object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.isSetDefaultRole != null) {
            result
                ..add(r'IsSetDefaultRole')
                ..add(serializers.serialize(object.isSetDefaultRole,
                    specifiedType: const FullType.nullable(String)));
        }
        if (object.roles != null) {
            result
                ..add(r'Roles')
                ..add(serializers.serialize(object.roles,
                    specifiedType: const FullType.nullable(BuiltList, [FullType(UserRoleUpdate)])));
        }
        return result;
    }

    @override
    UserRoleUpdateModel deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = UserRoleUpdateModelBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'IsSetDefaultRole':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType.nullable(String)) as String?;
                    if (valueDes == null) continue;
                    result.isSetDefaultRole = valueDes;
                    break;
                case r'Roles':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType.nullable(BuiltList, [FullType(UserRoleUpdate)])) as BuiltList<UserRoleUpdate>?;
                    if (valueDes == null) continue;
                    result.roles.replace(valueDes);
                    break;
            }
        }
        return result.build();
    }
}

