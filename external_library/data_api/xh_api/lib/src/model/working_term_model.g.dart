// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'working_term_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$WorkingTermModel extends WorkingTermModel {
  @override
  final String? idWorkingTerm;
  @override
  final String? idPhase;
  @override
  final String? termName;
  @override
  final String? instructionFile;
  @override
  final String? isDeleted;

  factory _$WorkingTermModel(
          [void Function(WorkingTermModelBuilder)? updates]) =>
      (new WorkingTermModelBuilder()..update(updates)).build();

  _$WorkingTermModel._(
      {this.idWorkingTerm,
      this.idPhase,
      this.termName,
      this.instructionFile,
      this.isDeleted})
      : super._();

  @override
  WorkingTermModel rebuild(void Function(WorkingTermModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WorkingTermModelBuilder toBuilder() =>
      new WorkingTermModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WorkingTermModel &&
        idWorkingTerm == other.idWorkingTerm &&
        idPhase == other.idPhase &&
        termName == other.termName &&
        instructionFile == other.instructionFile &&
        isDeleted == other.isDeleted;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, idWorkingTerm.hashCode), idPhase.hashCode),
                termName.hashCode),
            instructionFile.hashCode),
        isDeleted.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('WorkingTermModel')
          ..add('idWorkingTerm', idWorkingTerm)
          ..add('idPhase', idPhase)
          ..add('termName', termName)
          ..add('instructionFile', instructionFile)
          ..add('isDeleted', isDeleted))
        .toString();
  }
}

class WorkingTermModelBuilder
    implements Builder<WorkingTermModel, WorkingTermModelBuilder> {
  _$WorkingTermModel? _$v;

  String? _idWorkingTerm;
  String? get idWorkingTerm => _$this._idWorkingTerm;
  set idWorkingTerm(String? idWorkingTerm) =>
      _$this._idWorkingTerm = idWorkingTerm;

  String? _idPhase;
  String? get idPhase => _$this._idPhase;
  set idPhase(String? idPhase) => _$this._idPhase = idPhase;

  String? _termName;
  String? get termName => _$this._termName;
  set termName(String? termName) => _$this._termName = termName;

  String? _instructionFile;
  String? get instructionFile => _$this._instructionFile;
  set instructionFile(String? instructionFile) =>
      _$this._instructionFile = instructionFile;

  String? _isDeleted;
  String? get isDeleted => _$this._isDeleted;
  set isDeleted(String? isDeleted) => _$this._isDeleted = isDeleted;

  WorkingTermModelBuilder() {
    WorkingTermModel._defaults(this);
  }

  WorkingTermModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _idWorkingTerm = $v.idWorkingTerm;
      _idPhase = $v.idPhase;
      _termName = $v.termName;
      _instructionFile = $v.instructionFile;
      _isDeleted = $v.isDeleted;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WorkingTermModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$WorkingTermModel;
  }

  @override
  void update(void Function(WorkingTermModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$WorkingTermModel build() {
    final _$result = _$v ??
        new _$WorkingTermModel._(
            idWorkingTerm: idWorkingTerm,
            idPhase: idPhase,
            termName: termName,
            instructionFile: instructionFile,
            isDeleted: isDeleted);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
