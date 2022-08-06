// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ProjectModel extends ProjectModel {
  @override
  final String? idProject;
  @override
  final String? projectName;
  @override
  final String? address;
  @override
  final String? phoneNr;
  @override
  final String? email;
  @override
  final String? isDeleted;

  factory _$ProjectModel([void Function(ProjectModelBuilder)? updates]) =>
      (new ProjectModelBuilder()..update(updates)).build();

  _$ProjectModel._(
      {this.idProject,
      this.projectName,
      this.address,
      this.phoneNr,
      this.email,
      this.isDeleted})
      : super._();

  @override
  ProjectModel rebuild(void Function(ProjectModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProjectModelBuilder toBuilder() => new ProjectModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProjectModel &&
        idProject == other.idProject &&
        projectName == other.projectName &&
        address == other.address &&
        phoneNr == other.phoneNr &&
        email == other.email &&
        isDeleted == other.isDeleted;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, idProject.hashCode), projectName.hashCode),
                    address.hashCode),
                phoneNr.hashCode),
            email.hashCode),
        isDeleted.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ProjectModel')
          ..add('idProject', idProject)
          ..add('projectName', projectName)
          ..add('address', address)
          ..add('phoneNr', phoneNr)
          ..add('email', email)
          ..add('isDeleted', isDeleted))
        .toString();
  }
}

class ProjectModelBuilder
    implements Builder<ProjectModel, ProjectModelBuilder> {
  _$ProjectModel? _$v;

  String? _idProject;
  String? get idProject => _$this._idProject;
  set idProject(String? idProject) => _$this._idProject = idProject;

  String? _projectName;
  String? get projectName => _$this._projectName;
  set projectName(String? projectName) => _$this._projectName = projectName;

  String? _address;
  String? get address => _$this._address;
  set address(String? address) => _$this._address = address;

  String? _phoneNr;
  String? get phoneNr => _$this._phoneNr;
  set phoneNr(String? phoneNr) => _$this._phoneNr = phoneNr;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _isDeleted;
  String? get isDeleted => _$this._isDeleted;
  set isDeleted(String? isDeleted) => _$this._isDeleted = isDeleted;

  ProjectModelBuilder() {
    ProjectModel._defaults(this);
  }

  ProjectModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _idProject = $v.idProject;
      _projectName = $v.projectName;
      _address = $v.address;
      _phoneNr = $v.phoneNr;
      _email = $v.email;
      _isDeleted = $v.isDeleted;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProjectModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ProjectModel;
  }

  @override
  void update(void Function(ProjectModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ProjectModel build() {
    final _$result = _$v ??
        new _$ProjectModel._(
            idProject: idProject,
            projectName: projectName,
            address: address,
            phoneNr: phoneNr,
            email: email,
            isDeleted: isDeleted);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
