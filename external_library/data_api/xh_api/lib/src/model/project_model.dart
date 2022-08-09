//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'project_model.g.dart';

/// ProjectModel
///
/// Properties:
/// * [idProject] 
/// * [projectName] 
/// * [address] 
/// * [phoneNr] 
/// * [email] 
/// * [isDeleted] 
abstract class ProjectModel implements Built<ProjectModel, ProjectModelBuilder> {
    @BuiltValueField(wireName: r'IdProject')
    String? get idProject;

    @BuiltValueField(wireName: r'ProjectName')
    String? get projectName;

    @BuiltValueField(wireName: r'Address')
    String? get address;

    @BuiltValueField(wireName: r'PhoneNr')
    String? get phoneNr;

    @BuiltValueField(wireName: r'Email')
    String? get email;

    @BuiltValueField(wireName: r'IsDeleted')
    String? get isDeleted;

    ProjectModel._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(ProjectModelBuilder b) => b;

    factory ProjectModel([void updates(ProjectModelBuilder b)]) = _$ProjectModel;

    @BuiltValueSerializer(custom: true)
    static Serializer<ProjectModel> get serializer => _$ProjectModelSerializer();
}

class _$ProjectModelSerializer implements StructuredSerializer<ProjectModel> {
    @override
    final Iterable<Type> types = const [ProjectModel, _$ProjectModel];

    @override
    final String wireName = r'ProjectModel';

    @override
    Iterable<Object?> serialize(Serializers serializers, ProjectModel object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.idProject != null) {
            result
                ..add(r'IdProject')
                ..add(serializers.serialize(object.idProject,
                    specifiedType: const FullType.nullable(String)));
        }
        if (object.projectName != null) {
            result
                ..add(r'ProjectName')
                ..add(serializers.serialize(object.projectName,
                    specifiedType: const FullType.nullable(String)));
        }
        if (object.address != null) {
            result
                ..add(r'Address')
                ..add(serializers.serialize(object.address,
                    specifiedType: const FullType.nullable(String)));
        }
        if (object.phoneNr != null) {
            result
                ..add(r'PhoneNr')
                ..add(serializers.serialize(object.phoneNr,
                    specifiedType: const FullType.nullable(String)));
        }
        if (object.email != null) {
            result
                ..add(r'Email')
                ..add(serializers.serialize(object.email,
                    specifiedType: const FullType.nullable(String)));
        }
        if (object.isDeleted != null) {
            result
                ..add(r'IsDeleted')
                ..add(serializers.serialize(object.isDeleted,
                    specifiedType: const FullType.nullable(String)));
        }
        return result;
    }

    @override
    ProjectModel deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = ProjectModelBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'IdProject':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType.nullable(String)) as String?;
                    if (valueDes == null) continue;
                    result.idProject = valueDes;
                    break;
                case r'ProjectName':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType.nullable(String)) as String?;
                    if (valueDes == null) continue;
                    result.projectName = valueDes;
                    break;
                case r'Address':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType.nullable(String)) as String?;
                    if (valueDes == null) continue;
                    result.address = valueDes;
                    break;
                case r'PhoneNr':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType.nullable(String)) as String?;
                    if (valueDes == null) continue;
                    result.phoneNr = valueDes;
                    break;
                case r'Email':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType.nullable(String)) as String?;
                    if (valueDes == null) continue;
                    result.email = valueDes;
                    break;
                case r'IsDeleted':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType.nullable(String)) as String?;
                    if (valueDes == null) continue;
                    result.isDeleted = valueDes;
                    break;
            }
        }
        return result.build();
    }
}

