// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phase_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PhaseModel extends PhaseModel {
  @override
  final String? idProject;
  @override
  final String? phaseName;
  @override
  final String? idPhase;
  @override
  final String? fromDate;
  @override
  final String? toDate;
  @override
  final String? isDeleted;

  factory _$PhaseModel([void Function(PhaseModelBuilder)? updates]) =>
      (new PhaseModelBuilder()..update(updates)).build();

  _$PhaseModel._(
      {this.idProject,
      this.phaseName,
      this.idPhase,
      this.fromDate,
      this.toDate,
      this.isDeleted})
      : super._();

  @override
  PhaseModel rebuild(void Function(PhaseModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PhaseModelBuilder toBuilder() => new PhaseModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PhaseModel &&
        idProject == other.idProject &&
        phaseName == other.phaseName &&
        idPhase == other.idPhase &&
        fromDate == other.fromDate &&
        toDate == other.toDate &&
        isDeleted == other.isDeleted;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, idProject.hashCode), phaseName.hashCode),
                    idPhase.hashCode),
                fromDate.hashCode),
            toDate.hashCode),
        isDeleted.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('PhaseModel')
          ..add('idProject', idProject)
          ..add('phaseName', phaseName)
          ..add('idPhase', idPhase)
          ..add('fromDate', fromDate)
          ..add('toDate', toDate)
          ..add('isDeleted', isDeleted))
        .toString();
  }
}

class PhaseModelBuilder implements Builder<PhaseModel, PhaseModelBuilder> {
  _$PhaseModel? _$v;

  String? _idProject;
  String? get idProject => _$this._idProject;
  set idProject(String? idProject) => _$this._idProject = idProject;

  String? _phaseName;
  String? get phaseName => _$this._phaseName;
  set phaseName(String? phaseName) => _$this._phaseName = phaseName;

  String? _idPhase;
  String? get idPhase => _$this._idPhase;
  set idPhase(String? idPhase) => _$this._idPhase = idPhase;

  String? _fromDate;
  String? get fromDate => _$this._fromDate;
  set fromDate(String? fromDate) => _$this._fromDate = fromDate;

  String? _toDate;
  String? get toDate => _$this._toDate;
  set toDate(String? toDate) => _$this._toDate = toDate;

  String? _isDeleted;
  String? get isDeleted => _$this._isDeleted;
  set isDeleted(String? isDeleted) => _$this._isDeleted = isDeleted;

  PhaseModelBuilder() {
    PhaseModel._defaults(this);
  }

  PhaseModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _idProject = $v.idProject;
      _phaseName = $v.phaseName;
      _idPhase = $v.idPhase;
      _fromDate = $v.fromDate;
      _toDate = $v.toDate;
      _isDeleted = $v.isDeleted;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PhaseModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PhaseModel;
  }

  @override
  void update(void Function(PhaseModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$PhaseModel build() {
    final _$result = _$v ??
        new _$PhaseModel._(
            idProject: idProject,
            phaseName: phaseName,
            idPhase: idPhase,
            fromDate: fromDate,
            toDate: toDate,
            isDeleted: isDeleted);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
