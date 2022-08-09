//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'phase_model.g.dart';

/// PhaseModel
///
/// Properties:
/// * [idProject] 
/// * [phaseName] 
/// * [idPhase] 
/// * [fromDate] 
/// * [toDate] 
/// * [isDeleted] 
abstract class PhaseModel implements Built<PhaseModel, PhaseModelBuilder> {
    @BuiltValueField(wireName: r'IdProject')
    String? get idProject;

    @BuiltValueField(wireName: r'PhaseName')
    String? get phaseName;

    @BuiltValueField(wireName: r'IdPhase')
    String? get idPhase;

    @BuiltValueField(wireName: r'FromDate')
    String? get fromDate;

    @BuiltValueField(wireName: r'ToDate')
    String? get toDate;

    @BuiltValueField(wireName: r'IsDeleted')
    String? get isDeleted;

    PhaseModel._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(PhaseModelBuilder b) => b;

    factory PhaseModel([void updates(PhaseModelBuilder b)]) = _$PhaseModel;

    @BuiltValueSerializer(custom: true)
    static Serializer<PhaseModel> get serializer => _$PhaseModelSerializer();
}

class _$PhaseModelSerializer implements StructuredSerializer<PhaseModel> {
    @override
    final Iterable<Type> types = const [PhaseModel, _$PhaseModel];

    @override
    final String wireName = r'PhaseModel';

    @override
    Iterable<Object?> serialize(Serializers serializers, PhaseModel object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.idProject != null) {
            result
                ..add(r'IdProject')
                ..add(serializers.serialize(object.idProject,
                    specifiedType: const FullType.nullable(String)));
        }
        if (object.phaseName != null) {
            result
                ..add(r'PhaseName')
                ..add(serializers.serialize(object.phaseName,
                    specifiedType: const FullType.nullable(String)));
        }
        if (object.idPhase != null) {
            result
                ..add(r'IdPhase')
                ..add(serializers.serialize(object.idPhase,
                    specifiedType: const FullType.nullable(String)));
        }
        if (object.fromDate != null) {
            result
                ..add(r'FromDate')
                ..add(serializers.serialize(object.fromDate,
                    specifiedType: const FullType.nullable(String)));
        }
        if (object.toDate != null) {
            result
                ..add(r'ToDate')
                ..add(serializers.serialize(object.toDate,
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
    PhaseModel deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = PhaseModelBuilder();

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
                case r'PhaseName':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType.nullable(String)) as String?;
                    if (valueDes == null) continue;
                    result.phaseName = valueDes;
                    break;
                case r'IdPhase':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType.nullable(String)) as String?;
                    if (valueDes == null) continue;
                    result.idPhase = valueDes;
                    break;
                case r'FromDate':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType.nullable(String)) as String?;
                    if (valueDes == null) continue;
                    result.fromDate = valueDes;
                    break;
                case r'ToDate':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType.nullable(String)) as String?;
                    if (valueDes == null) continue;
                    result.toDate = valueDes;
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

