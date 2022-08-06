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
    @BuiltValueField(wireName: r'idProject')
    String? get idProject;

    @BuiltValueField(wireName: r'projectName')
    String? get projectName;

    @BuiltValueField(wireName: r'address')
    String? get address;

    @BuiltValueField(wireName: r'phoneNr')
    String? get phoneNr;

    @BuiltValueField(wireName: r'email')
    String? get email;

    @BuiltValueField(wireName: r'isDeleted')
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
                ..add(r'idProject')
                ..add(serializers.serialize(object.idProject,
                    specifiedType: const FullType.nullable(String)));
        }
        if (object.projectName != null) {
            result
                ..add(r'projectName')
                ..add(serializers.serialize(object.projectName,
                    specifiedType: const FullType.nullable(String)));
        }
        if (object.address != null) {
            result
                ..add(r'address')
                ..add(serializers.serialize(object.address,
                    specifiedType: const FullType.nullable(String)));
        }
        if (object.phoneNr != null) {
            result
                ..add(r'phoneNr')
                ..add(serializers.serialize(object.phoneNr,
                    specifiedType: const FullType.nullable(String)));
        }
        if (object.email != null) {
            result
                ..add(r'email')
                ..add(serializers.serialize(object.email,
                    specifiedType: const FullType.nullable(String)));
        }
        if (object.isDeleted != null) {
            result
                ..add(r'isDeleted')
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
                case r'idProject':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType.nullable(String)) as String?;
                    if (valueDes == null) continue;
                    result.idProject = valueDes;
                    break;
                case r'projectName':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType.nullable(String)) as String?;
                    if (valueDes == null) continue;
                    result.projectName = valueDes;
                    break;
                case r'address':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType.nullable(String)) as String?;
                    if (valueDes == null) continue;
                    result.address = valueDes;
                    break;
                case r'phoneNr':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType.nullable(String)) as String?;
                    if (valueDes == null) continue;
                    result.phoneNr = valueDes;
                    break;
                case r'email':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType.nullable(String)) as String?;
                    if (valueDes == null) continue;
                    result.email = valueDes;
                    break;
                case r'isDeleted':
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

