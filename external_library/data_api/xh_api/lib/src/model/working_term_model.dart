//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'working_term_model.g.dart';

/// WorkingTermModel
///
/// Properties:
/// * [idWorkingTerm] 
/// * [idPhase] 
/// * [termName] 
/// * [instructionFile] 
/// * [isDeleted] 
abstract class WorkingTermModel implements Built<WorkingTermModel, WorkingTermModelBuilder> {
    @BuiltValueField(wireName: r'IdWorkingTerm')
    String? get idWorkingTerm;

    @BuiltValueField(wireName: r'IdPhase')
    String? get idPhase;

    @BuiltValueField(wireName: r'TermName')
    String? get termName;

    @BuiltValueField(wireName: r'InstructionFile')
    String? get instructionFile;

    @BuiltValueField(wireName: r'IsDeleted')
    String? get isDeleted;

    WorkingTermModel._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(WorkingTermModelBuilder b) => b;

    factory WorkingTermModel([void updates(WorkingTermModelBuilder b)]) = _$WorkingTermModel;

    @BuiltValueSerializer(custom: true)
    static Serializer<WorkingTermModel> get serializer => _$WorkingTermModelSerializer();
}

class _$WorkingTermModelSerializer implements StructuredSerializer<WorkingTermModel> {
    @override
    final Iterable<Type> types = const [WorkingTermModel, _$WorkingTermModel];

    @override
    final String wireName = r'WorkingTermModel';

    @override
    Iterable<Object?> serialize(Serializers serializers, WorkingTermModel object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.idWorkingTerm != null) {
            result
                ..add(r'IdWorkingTerm')
                ..add(serializers.serialize(object.idWorkingTerm,
                    specifiedType: const FullType.nullable(String)));
        }
        if (object.idPhase != null) {
            result
                ..add(r'IdPhase')
                ..add(serializers.serialize(object.idPhase,
                    specifiedType: const FullType.nullable(String)));
        }
        if (object.termName != null) {
            result
                ..add(r'TermName')
                ..add(serializers.serialize(object.termName,
                    specifiedType: const FullType.nullable(String)));
        }
        if (object.instructionFile != null) {
            result
                ..add(r'InstructionFile')
                ..add(serializers.serialize(object.instructionFile,
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
    WorkingTermModel deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = WorkingTermModelBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'IdWorkingTerm':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType.nullable(String)) as String?;
                    if (valueDes == null) continue;
                    result.idWorkingTerm = valueDes;
                    break;
                case r'IdPhase':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType.nullable(String)) as String?;
                    if (valueDes == null) continue;
                    result.idPhase = valueDes;
                    break;
                case r'TermName':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType.nullable(String)) as String?;
                    if (valueDes == null) continue;
                    result.termName = valueDes;
                    break;
                case r'InstructionFile':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType.nullable(String)) as String?;
                    if (valueDes == null) continue;
                    result.instructionFile = valueDes;
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

